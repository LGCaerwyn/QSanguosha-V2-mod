#ifndef _SKIN_BANK_H
#define _SKIN_BANK_H

#define QSAN_UI_LIBRARY_AVAILABLE

#include "card.h"
#include "qsanbutton.h"
#include "util.h"
#include "sanshadowtextfont.h"

#include <json/json.h>
#include <QString>
#include <QPixmap>
#include <QHash>
#include <QFont>
#include <QPen>
#include <QPainter>
#include <QGraphicsPixmapItem>
#include <QAbstractAnimation>

typedef QHash<QString, QStringList> SkillToAudioFiles;

class IQSanComponentSkin { // interface class
public:
    class AnchoredRect {
    public:
        QRect getTranslatedRect(QRect parentRect) const;
        QRect getTranslatedRect(QRect parentRect, QSize childSize) const;
        bool tryParse(Json::Value value);

    protected:
        Qt::Alignment m_anchorChild;
        Qt::Alignment m_anchorParent;
        QPoint m_offset;
        QSize m_fixedSize;
        bool m_useFixedSize;
    };

    static const char *S_SKIN_KEY_DEFAULT;
    static const char *S_SKIN_KEY_DEFAULT_SECOND;
    bool load(const QString &layoutConfigFileName, const QString &imageConfigFileName,
              const QString &audioConfigFileName, const QString &animationConfigFileName);
    QPixmap getPixmap(const QString &key, const QString &arg = QString(), bool cache = false) const;
    QPixmap getPixmapFileName(const QString &key) const;
    QPixmap getPixmapFromFileName(const QString &fileName, bool cache = false) const;
    QStringList getAudioFileNames(const QString &key) const;
    QString getRandomAudioFileName(const QString &key) const;
    bool isImageKeyDefined(const QString &key) const;
    QStringList getAnimationFileNames() const;

    //��������֧����ȫ������ͨ����֮ǰʵʱ�л���
    //����ÿ�ζ�ȡskinsǰ��ȫ�����֮ǰ����ľ�ֵ
    void clear();

protected:
    virtual bool _loadLayoutConfig(const Json::Value &config) = 0;
    virtual bool _loadImageConfig(const Json::Value &config);

    QString _readConfig(const Json::Value &dictionary, const QString &key,
                        const QString &defaultValue = QString()) const;
    QString _readImageConfig(const QString &key, QRect &clipRegion, bool &clipping,
                             QSize &newScale, bool scaled,
                             const QString &defaultValue = QString()) const;

    Json::Value _m_imageConfig;
    Json::Value _m_audioConfig;
    Json::Value _m_animationConfig;
};

//Ŀǰ�����ڻ���ʹ�õ�Label������μ�QSanRoomSkin::createHuaShenAnimation����
#include <QGraphicsProxyWidget>
class GraphicsWidgetHoverItem : public QGraphicsProxyWidget
{
    Q_OBJECT

public:
    explicit GraphicsWidgetHoverItem(QGraphicsItem *parent = 0);

protected:
    virtual void hoverEnterEvent(QGraphicsSceneHoverEvent *);
    virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent *);

signals:
    void hover_enter();
    void hover_leave();
};

class QSanRoomSkin: public IQSanComponentSkin {
public:
    struct RoomLayout {
        int m_scenePadding;
        int m_roleBoxHeight;
        int m_chatTextBoxHeight;
        int m_discardPileMinWidth;
        int m_discardPilePadding;
        double m_logBoxHeightPercentage;
        double m_chatBoxHeightPercentage;
        double m_infoPlaneWidthPercentage;
        double m_photoDashboardPadding;
        double m_photoRoomPadding;
        int m_photoHDistance;
        int m_photoVDistance;
        QSize m_minimumSceneSize;
        QSize m_maximumSceneSize;
        QSize m_minimumSceneSize10Player;
        QSize m_maximumSceneSize10Player;
    };

    struct PlayerCardContainerLayout {
        int m_normalHeight;
        QRect m_boundingRect;
        QRect m_focusFrameArea;
        QRect m_handCardArea;

        // equips
        QRect m_equipAreas[S_EQUIP_AREA_LENGTH];
        QRect m_equipImageArea;
        QRect m_equipSuitArea;
        QRect m_equipPointArea;
        QRect m_horseImageArea;
        QRect m_horseSuitArea;
        QRect m_horsePointArea;
        SanShadowTextFont m_equipBlackPointFont;
        SanShadowTextFont m_equipRedPointFont;

        // delayed trick area
        QRect m_delayedTrickFirstRegion;
        QPoint m_delayedTrickStep;

        AnchoredRect m_markTextArea;
        QPoint m_roleComboBoxPos;

        QPoint m_changePrimaryHeroSkinBtnPos;
        QPoint m_changeSecondaryHeroSkinBtnPos;

        // photo area
        QRect m_avatarArea;
        int m_avatarSize;
        QRect m_smallAvatarArea;
        int m_smallAvatarSize;
        int m_primaryAvatarSize;
        QRect m_circleArea;
        int m_circleImageSize;
        QRect m_avatarNameArea;
        QRect m_smallAvatarNameArea;
        SanShadowTextFont m_avatarNameFont;
        SanShadowTextFont m_smallAvatarNameFont;
        QRect m_kingdomIconArea;
        QRect m_kingdomMaskArea;
        SanShadowTextFont m_handCardFont;
        QRect m_screenNameArea;
        SanShadowTextFont m_screenNameFont;

        // progress bar and other controls
        bool m_isProgressBarHorizontal;
        AnchoredRect m_progressBarArea;
        QSize m_magatamaSize;
        QRect m_magatamaImageArea;
        bool m_magatamasHorizontal;
        bool m_magatamasBgVisible;
        QPoint m_magatamasAnchor;
        Qt::Alignment m_magatamasAlign;

        AnchoredRect m_phaseArea;

        // private pile (e.g. 7 stars, buqu)
        QPoint m_privatePileStartPos;
        QPoint m_privatePileStep;
        QSize m_privatePileButtonSize;

        // various icons
        QRect m_actionedIconRegion;
        QRect m_saveMeIconRegion;
        QRect m_chainedIconRegion;
        QRect m_readyIconRegion;
        AnchoredRect m_deathIconRegion;
        QRect m_votesIconRegion;
        QColor m_drankMaskColor;
        QColor m_duanchangMaskColor;
        QColor m_deathEffectColor;

        QRect m_skillNameArea;
        SanShadowTextFont m_skillNameFont;

        QRect m_extraSkillArea;
        SanShadowTextFont m_extraSkillFont;
        QRect m_extraSkillTextArea;
    };

    struct PhotoLayout: public PlayerCardContainerLayout {
        int m_normalWidth;
        QRect m_mainFrameArea;
        QRect m_cardMoveRegion;
        QRect m_onlineStatusArea;
        SanShadowTextFont m_onlineStatusFont;
        QColor m_onlineStatusBgColor;
    };

    struct DashboardLayout: public PlayerCardContainerLayout {
        int m_leftWidth, m_rightWidth;
        int m_floatingAreaHeight;
        QSize m_buttonSetSize;
        QRect m_confirmButtonArea;
        QRect m_cancelButtonArea;
        QRect m_discardButtonArea;
        QRect m_trustButtonArea;
        QSize m_skillButtonsSize[3];
        QRect m_skillTextArea[3];
        QRect m_skillTextAreaDown[3];
        QPoint m_equipBorderPos;
        QPoint m_equipSelectedOffset;
        int m_disperseWidth;
        QColor m_trustEffectColor;

        //���ܿ����ͷ�����ߵĿհ״�С���ұ߿հ״�С�͵ײ��հ״�С
        int m_skillDockLeftMargin;
        int m_skillDockRightMargin;
        int m_skillDockBottomMargin;

        SanShadowTextFont m_skillTextFonts[3];
        QColor m_skillTextColors[QSanButton::S_NUM_BUTTON_STATES * QSanInvokeSkillButton::S_NUM_SKILL_TYPES];
        QColor m_skillTextShadowColors[QSanButton::S_NUM_BUTTON_STATES * QSanInvokeSkillButton::S_NUM_SKILL_TYPES];

        SanShadowTextFont getSkillTextFont(QSanButton::ButtonState state,
                                           QSanInvokeSkillButton::SkillType type,
                                           QSanInvokeSkillButton::SkillButtonWidth width) const;
    };

    struct CommonLayout {
        // card related
        int m_cardNormalWidth;
        int m_cardNormalHeight;
        QRect m_cardMainArea;
        QRect m_cardSuitArea;
        QRect m_cardNumberArea;
        QRect m_cardFootnoteArea;
        QRect m_cardAvatarArea;
        QRect m_cardFrameArea;
        SanShadowTextFont m_cardFootnoteFont;

        QSize m_promptInfoSize;
        SanShadowTextFont m_promptInfoFont;

        SanShadowTextFont m_hpFont[6];
        int m_hpExtraSpaceHolder;

        // dialogs
        // when # of generals <= switchIconSizeThreadshold
        QSize m_chooseGeneralBoxSparseIconSize;
        // when # of generals > switchIconSizeThreadshold
        QSize m_chooseGeneralBoxDenseIconSize;
        int m_chooseGeneralBoxSwitchIconSizeThreshold;
        int m_chooseGeneralBoxSwitchIconEachRow;
        int m_chooseGeneralBoxSwitchIconEachRowForTooManyGenerals;
        int m_chooseGeneralBoxNoIconThreshold;

        // avatar size
        QSize m_tinyAvatarSize;
    };

    enum GeneralIconSize {
        S_GENERAL_ICON_SIZE_TINY,
        S_GENERAL_ICON_SIZE_SMALL,
        S_GENERAL_ICON_SIZE_LARGE,
        S_GENERAL_ICON_SIZE_CARD,
        S_GENERAL_ICON_SIZE_PHOTO_SECONDARY,
        S_GENERAL_ICON_SIZE_DASHBOARD_SECONDARY,
        S_GENERAL_ICON_SIZE_PHOTO_PRIMARY,
        S_GENERAL_ICON_SIZE_DASHBOARD_PRIMARY,
        S_GENERAL_ICON_SIZE_KOF
    };

    const RoomLayout &getRoomLayout() const;
    const PhotoLayout &getPhotoLayout() const;
    const CommonLayout &getCommonLayout() const;
    const DashboardLayout &getDashboardLayout() const;

    QString getButtonPixmapPath(const QString &groupName, const QString &buttonName, QSanButton::ButtonState state) const;
    QPixmap getButtonPixmap(const QString &groupName, const QString &buttonName, QSanButton::ButtonState state) const;

    QPixmap getSkillButtonPixmap(QSanButton::ButtonState state,
                                 QSanInvokeSkillButton::SkillType type,
                                 QSanInvokeSkillButton::SkillButtonWidth width) const;
    QPixmap getCardMainPixmap(const QString &cardName, bool cache = false) const;
    QPixmap getCardSuitPixmap(Card::Suit suit) const;
    QPixmap getCardNumberPixmap(int point, bool isBlack) const;
    QPixmap getCardJudgeIconPixmap(const QString &judgeName) const;
    QPixmap getCardFramePixmap(const QString &frameType) const;
    QPixmap getCardAvatarPixmap(const QString &generalName) const;
    QPixmap getGeneralPixmap(const QString &generalName, GeneralIconSize size) const;
    QString getPlayerAudioEffectPath(const QString &eventName, bool isMale, int index = -1) const;
    QString getPlayerAudioEffectPath(const QString &eventName, const QString &category, int index = -1) const;
    QPixmap getProgressBarPixmap(int percentile) const;

    QString getHeroSkinAudioEffectPath(const QString &generalName, int generalSkinIndex,
        const QString &skillName, const QString &category, int index = -1) const;
    QString getMatchGeneralNameFromAudioConfig(const QString &generalName,
        int generalSkinIndex, const QString &category) const;
    QStringList getHeroSkinSKillAudios(const QString &generalName, const QString &skillName) const;
    static SkillToAudioFiles getSkillToAudioFiles(const QString &generalFullName);
    void getHeroSkinContainerGeneralIconPathAndClipRegion(const QString &generalName,
        int skinIndex, QString &generalIconPath, QRect &clipRegion) const;

    // Animations
    QAbstractAnimation *createHuaShenAnimation(QPixmap &huashenAvatar,
        QPoint topLeft, QGraphicsItem *parent,
        GraphicsWidgetHoverItem *&huashenItemCreated) const;

    // static consts
    // main keys
    static const char *S_SKIN_KEY_DASHBOARD;
    static const char *S_SKIN_KEY_PHOTO;
    static const char *S_SKIN_KEY_COMMON;
    static const char *S_SKIN_KEY_ROOM;

    // button
    static const char *S_SKIN_KEY_BUTTON;
    static const char *S_SKIN_KEY_DASHBOARD_BUTTON_SET_BG;
    static const char *S_SKIN_KEY_BUTTON_DASHBOARD_CONFIRM;
    static const char *S_SKIN_KEY_BUTTON_DASHBOARD_CANCEL;
    static const char *S_SKIN_KEY_BUTTON_DASHBOARD_DISCARD;
    static const char *S_SKIN_KEY_BUTTON_DASHBOARD_TRUST;
    static const char *S_SKIN_KEY_PLATTER;
    static const char *S_SKIN_KEY_BUTTON_SKILL;

    // player container
    static const char *S_SKIN_KEY_MAINFRAME;
    static const char *S_SKIN_KEY_LEFTFRAME;
    static const char *S_SKIN_KEY_RIGHTFRAME;
    static const char *S_SKIN_KEY_MIDDLEFRAME;
    static const char *S_SKIN_KEY_HANDCARDNUM;
    static const char *S_SKIN_KEY_FACETURNEDMASK;
    static const char *S_SKIN_KEY_BLANK_GENERAL;
    static const char *S_SKIN_KEY_CHAIN;
    static const char *S_SKIN_KEY_PHASE;
    static const char *S_SKIN_KEY_SELECTED_FRAME;
    static const char *S_SKIN_KEY_FOCUS_FRAME;
    static const char *S_SKIN_KEY_SAVE_ME_ICON;
    static const char *S_SKIN_KEY_ACTIONED_ICON;
    static const char *S_SKIN_KEY_KINGDOM_ICON;
    static const char *S_SKIN_KEY_KINGDOM_COLOR_MASK;
    static const char *S_SKIN_KEY_DASHBOARD_KINGDOM_COLOR_MASK;
    static const char *S_SKIN_KEY_VOTES_NUMBER;
    static const char *S_SKIN_KEY_HAND_CARD_BACK;
    static const char *S_SKIN_KEY_HAND_CARD_SUIT;
    static const char *S_SKIN_KEY_JUDGE_CARD_ICON;
    static const char *S_SKIN_KEY_HAND_CARD_MAIN_PHOTO;
    static const char *S_SKIN_KEY_HAND_CARD_NUMBER_BLACK;
    static const char *S_SKIN_KEY_HAND_CARD_NUMBER_RED;
    static const char *S_SKIN_KEY_HAND_CARD_FRAME;
    static const char *S_SKIN_KEY_PLAYER_GENERAL_ICON;
    static const char *S_SKIN_KEY_EXTRA_SKILL_BG;
    static const char *S_SKIN_KEY_MAGATAMAS_BG;
    static const char *S_SKIN_KEY_MAGATAMAS;
    static const char *S_SKIN_KEY_PLAYER_AUDIO_EFFECT;
    static const char *S_SKIN_KEY_SYSTEM_AUDIO_EFFECT;
    static const char *S_SKIN_KEY_EQUIP_ICON;
    static const char *S_SKIN_KEY_PROGRESS_BAR_IMAGE;
    static const char *S_SKIN_KEY_GENERAL_CIRCLE_IMAGE;
    static const char *S_SKIN_KEY_GENERAL_CIRCLE_MASK;

    // Animations
    static const char *S_SKIN_KEY_ANIMATIONS;

    // The following ones are to be moved to lobby skin later
    static const char *S_SKIN_KEY_READY_ICON;

    static const char *S_SKIN_KEY_OWNER_ICON;
    static const char *S_HERO_SKIN_KEY_PLAYER_AUDIO_EFFECT;
    static const char *S_HERO_SKIN_KEY_GENERAL_ICON;

protected:
    RoomLayout _m_roomLayout;
    PhotoLayout _m_photoLayout;
    CommonLayout _m_commonLayout;
    DashboardLayout _m_dashboardLayout;
    virtual bool _loadLayoutConfig(const Json::Value &layoutConfig);

    QString getAudioFileNameFromKey(const QString &key, int index) const;
    QString getHeroSkinAudioFileNameFromSkill(const QString &generalName,
        const QString &skillName, int index) const;
    static void addHeroSkinSkillAudioToBank(const QString &key,
        const QString &generalFullName, const QString &skillName);
    QStringList _getHeroSkinSKillAudiosHelper(const QString &generalFullName, const QString &skillName) const;

    static SkillToAudioFiles m_HeroSkinSkillAudioBank;
    static QHash<QString, SkillToAudioFiles> m_GeneralToSkillToAudioFiles;

    static const QPixmap &getNullPixmap();
};

class MutexLocker
{
public:
    MutexLocker() { m_mutex.lock(); }
    ~MutexLocker() { m_mutex.unlock(); }

private:
    static QMutex m_mutex;
};

class QSanSkinScheme {
// Why do we need another layer above room skin? Because we may add lobby, login interface
// in the future; and we may need to assemble a set of different skins into a scheme.
public:
    bool load(Json::Value configs);
    const QSanRoomSkin& getRoomSkin() const;
    void clear() { _m_roomSkin.clear(); }

protected:
    QSanRoomSkin _m_roomSkin;
};

#include <QFile>

class QSanSkinFactory {
public:
    static QSanSkinFactory &getInstance();
    static void destroyInstance();

    static bool isEnableFullSkin() {
        return QFile::exists("skins/fulldefaultSkin.layout.json");
    }

    const QString &getCurrentSkinName() const;
    const QSanSkinScheme &getCurrentSkinScheme();

    bool switchSkin(const QString &skinName);

    QString S_DEFAULT_SKIN_NAME;
    QString S_COMPACT_SKIN_NAME;

protected:
    QSanSkinFactory();

    static QSanSkinFactory* _sm_singleton;
    QSanSkinScheme _sm_currentSkin;
    Json::Value _m_skinList;
    QString _m_skinName;

    static QString _m_skinListFileName;
};

#define G_ROOM_SKIN (QSanSkinFactory::getInstance().getCurrentSkinScheme().getRoomSkin())
#define G_DASHBOARD_LAYOUT (G_ROOM_SKIN.getDashboardLayout())
#define G_ROOM_LAYOUT (G_ROOM_SKIN.getRoomLayout())
#define G_PHOTO_LAYOUT (G_ROOM_SKIN.getPhotoLayout())
#define G_COMMON_LAYOUT (G_ROOM_SKIN.getCommonLayout())

#endif