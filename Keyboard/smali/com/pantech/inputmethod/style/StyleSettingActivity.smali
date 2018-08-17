.class public Lcom/pantech/inputmethod/style/StyleSettingActivity;
.super Landroid/app/Activity;
.source "StyleSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/style/StyleSettingActivity$ButtonEnableThread;,
        Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;
    }
.end annotation


# static fields
.field private static final CP_KEY_VALUE:Ljava/lang/String; = "_value"

.field private static final CP_SKYIME_URI:Ljava/lang/String; = "content://com.pantech.inputmethods.SkyIME.SkyIMEProvider/data"

.field private static final LENGTH_PRESET_BUTTON:I = 0x14

.field private static final MY_REQUEST_WRITE_EXTERNAL_STORAGE:I = 0x0

.field private static final PREF_KEY_IMAGE_SELECTED:Ljava/lang/String; = "keyboard_background_image_selected"

.field private static final PREF_KEY_OPACITY_KEY_BACKGROUND:Ljava/lang/String; = "opacity_key_background"

.field private static final PREF_KEY_OPACITY_OUTLINE:Ljava/lang/String; = "opacitiy_outline"

.field private static final PREF_KEY_OPACITY_TEXT:Ljava/lang/String; = "opacity_text"

.field private static final PREF_KEY_SELECTED_PRESET:Ljava/lang/String; = "theme_type"

.field private static final TAG:Ljava/lang/String;

.field private static mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

.field private static mOrientation:I

.field private static mOrientationChanging:Z


# instance fields
.field private DEBUG:Z

.field private final REQ_CODE_PICK_CROP:I

.field private final REQ_CODE_PICK_GALLERY:I

.field final drawables:[[I

.field final drawables_1:[I

.field final drawables_2:[I

.field final drawables_3:[I

.field final drawables_4:[I

.field final drawables_5:[I

.field final drawables_6:[I

.field final drawables_7:[I

.field final drawables_8:[I

.field final drawables_9:[I

.field private mAddImageButton:Landroid/widget/ImageButton;

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mCancelButton:Landroid/view/View;

.field private mCropAspectHeight:I

.field private mCropAspectWidth:I

.field private mCurrentKeyBackgroundOpacity:I

.field private mCurrentOutlineOpacity:I

.field private mCurrentSelectedPresetIndex:I

.field private mCurrentTextOpacity:I

.field private mDeleteImageButton:Landroid/widget/ImageButton;

.field private mFunctionId:[I

.field private mHasDeleteImage:Z

.field private mImageSizeBoundary:I

.field private mIsImageCroped:Z

.field private mKeyboardBackgroundImageSelected:Z

.field private mKeyboardImageContainer:Landroid/widget/RelativeLayout;

.field private mNormalId:[I

.field private mNumberId:[I

.field private mOnClickListenerForETCButton:Landroid/view/View$OnClickListener;

.field private mOnClickListenerForPresetButton:Landroid/view/View$OnClickListener;

.field private mOnSeekbarChangeKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

.field private mOnSeekbarChangeListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

.field private mOutlineView:Landroid/widget/ImageView;

.field private mPref:Landroid/content/SharedPreferences;

.field private mPresetButtonIdArray:[I

.field private mPresetButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewContainer:Landroid/widget/LinearLayout;

.field private mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

.field private mPreview_normal:[Lcom/pantech/inputmethod/style/PreviewButton;

.field private mPreview_number:[Lcom/pantech/inputmethod/style/PreviewButton;

.field private mResetButton:Landroid/widget/Button;

.field private mResetDialog:Landroid/app/AlertDialog;

.field private mResetDialogView:Landroid/view/View;

.field private mSaveButton:Landroid/view/View;

.field private mSeeckbarKeyBackground:Lcom/pantech/widget/SkySlideTheme;

.field private mSeeckbarOutline:Lcom/pantech/widget/SkySlideTheme;

.field private mSeeckbarText:Lcom/pantech/widget/SkySlideTheme;

.field private mTextView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const-class v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/4 v3, 0x6

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-boolean v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    .line 71
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mNumberId:[I

    .line 72
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mNormalId:[I

    .line 73
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mFunctionId:[I

    .line 74
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/pantech/inputmethod/style/PreviewButton;

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_number:[Lcom/pantech/inputmethod/style/PreviewButton;

    .line 75
    new-array v0, v1, [Lcom/pantech/inputmethod/style/PreviewButton;

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_normal:[Lcom/pantech/inputmethod/style/PreviewButton;

    .line 76
    new-array v0, v1, [Lcom/pantech/inputmethod/style/PreviewButton;

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    .line 82
    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPresetButtonIdArray:[I

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPresetButtonList:Ljava/util/ArrayList;

    .line 112
    const/4 v0, 0x3

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentSelectedPresetIndex:I

    .line 115
    iput v5, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    .line 116
    iput v5, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentKeyBackgroundOpacity:I

    .line 117
    iput v5, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentOutlineOpacity:I

    .line 128
    iput-boolean v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mIsImageCroped:Z

    .line 203
    new-instance v0, Lcom/pantech/inputmethod/style/StyleSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity$1;-><init>(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnClickListenerForPresetButton:Landroid/view/View$OnClickListener;

    .line 255
    new-instance v0, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity$2;-><init>(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnClickListenerForETCButton:Landroid/view/View$OnClickListener;

    .line 692
    new-array v0, v3, [I

    fill-array-data v0, :array_d2

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_1:[I

    .line 698
    new-array v0, v3, [I

    fill-array-data v0, :array_e2

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_2:[I

    .line 704
    new-array v0, v3, [I

    fill-array-data v0, :array_f2

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_3:[I

    .line 710
    new-array v0, v3, [I

    fill-array-data v0, :array_102

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_4:[I

    .line 716
    new-array v0, v3, [I

    fill-array-data v0, :array_112

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_5:[I

    .line 722
    new-array v0, v3, [I

    fill-array-data v0, :array_122

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_6:[I

    .line 728
    new-array v0, v3, [I

    fill-array-data v0, :array_132

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_7:[I

    .line 734
    new-array v0, v3, [I

    fill-array-data v0, :array_142

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_8:[I

    .line 740
    new-array v0, v3, [I

    fill-array-data v0, :array_152

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_9:[I

    .line 746
    const/16 v0, 0x9

    new-array v0, v0, [[I

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_1:[I

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_2:[I

    aput-object v1, v0, v4

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_3:[I

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_4:[I

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_5:[I

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_6:[I

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_7:[I

    aput-object v1, v0, v3

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_8:[I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables_9:[I

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables:[[I

    .line 1215
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mImageSizeBoundary:I

    .line 1221
    iput v4, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCropAspectWidth:I

    iput v4, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCropAspectHeight:I

    .line 1223
    const v0, 0xdbba1

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->REQ_CODE_PICK_GALLERY:I

    .line 1224
    const v0, 0xdbba3

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->REQ_CODE_PICK_CROP:I

    return-void

    .line 692
    nop

    :array_d2
    .array-data 4
        0x7f0200eb
        0x7f020168
        0x7f020148
        0x7f02012e
        0x7f020140
        0x7f020160
    .end array-data

    .line 698
    :array_e2
    .array-data 4
        0x7f0200ea
        0x7f020167
        0x7f020147
        0x7f02012d
        0x7f02013f
        0x7f02015f
    .end array-data

    .line 704
    :array_f2
    .array-data 4
        0x7f0200e8
        0x7f020165
        0x7f020145
        0x7f02012b
        0x7f02013d
        0x7f02015d
    .end array-data

    .line 710
    :array_102
    .array-data 4
        0x7f0200ed
        0x7f02016a
        0x7f02014a
        0x7f020130
        0x7f020142
        0x7f020162
    .end array-data

    .line 716
    :array_112
    .array-data 4
        0x7f0200ef
        0x7f02016c
        0x7f02014c
        0x7f020132
        0x7f020144
        0x7f020077
    .end array-data

    .line 722
    :array_122
    .array-data 4
        0x7f0200e9
        0x7f020166
        0x7f020146
        0x7f02012c
        0x7f02013e
        0x7f02015e
    .end array-data

    .line 728
    :array_132
    .array-data 4
        0x7f0200ec
        0x7f020169
        0x7f020149
        0x7f02012f
        0x7f020141
        0x7f020161
    .end array-data

    .line 734
    :array_142
    .array-data 4
        0x7f0200ee
        0x7f02016b
        0x7f02014b
        0x7f020131
        0x7f020143
        0x7f020163
    .end array-data

    .line 740
    :array_152
    .array-data 4
        0x7f0200ee
        0x7f02016a
        0x7f02014a
        0x7f020131
        0x7f020142
        0x7f020162
    .end array-data
.end method

.method static synthetic access$000(Lcom/pantech/inputmethod/style/StyleSettingActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentSelectedPresetIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/pantech/inputmethod/style/StyleSettingActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentSelectedPresetIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPresetButtonList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/pantech/inputmethod/style/StyleSettingActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentOutlineOpacity:I

    return v0
.end method

.method static synthetic access$1002(Lcom/pantech/inputmethod/style/StyleSettingActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentOutlineOpacity:I

    return p1
.end method

.method static synthetic access$1100(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyboardBackgroundImageSelected:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mHasDeleteImage:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/pantech/inputmethod/style/StyleSettingActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mHasDeleteImage:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getTempImageFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/pantech/inputmethod/style/StyleSettingActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->setKeyboardBackgroundImage(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->deleteTemporaryImageFiles()V

    return-void
.end method

.method static synthetic access$1800(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/Button;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mResetButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->createCustomDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->updateDefaultValues()V

    return-void
.end method

.method static synthetic access$2000(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mResetDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mDeleteImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyboardImageContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getTempImageFileNewForCrop()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mIsImageCroped:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Lcom/pantech/widget/SkySlideTheme;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarText:Lcom/pantech/widget/SkySlideTheme;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Lcom/pantech/widget/SkySlideTheme;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarKeyBackground:Lcom/pantech/widget/SkySlideTheme;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Lcom/pantech/widget/SkySlideTheme;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarOutline:Lcom/pantech/widget/SkySlideTheme;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->resetOpacitity()V

    return-void
.end method

.method static synthetic access$300(Lcom/pantech/inputmethod/style/StyleSettingActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->updatePreview(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mAddImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSaveButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCancelButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/pantech/inputmethod/style/StyleSettingActivity;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$800(Lcom/pantech/inputmethod/style/StyleSettingActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    return v0
.end method

.method static synthetic access$802(Lcom/pantech/inputmethod/style/StyleSettingActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    return p1
.end method

.method static synthetic access$900(Lcom/pantech/inputmethod/style/StyleSettingActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;

    .prologue
    .line 65
    iget v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentKeyBackgroundOpacity:I

    return v0
.end method

.method static synthetic access$902(Lcom/pantech/inputmethod/style/StyleSettingActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/style/StyleSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentKeyBackgroundOpacity:I

    return p1
.end method

.method private checkSDisAvailable()Z
    .registers 3

    .prologue
    .line 1282
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1283
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private checkWriteExternalPermission()Z
    .registers 4

    .prologue
    .line 1276
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1277
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 1278
    .local v1, "res":I
    if-nez v1, :cond_a

    const/4 v2, 0x1

    :goto_9
    return v2

    :cond_a
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public static convertColorIntWithAlpha(Ljava/lang/String;I)I
    .registers 16
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "alpha"    # I

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x6

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/16 v9, 0x10

    .line 1172
    mul-int/lit16 v6, p1, 0xff

    div-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1177
    .local v1, "alphaHex":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_28

    .line 1178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1181
    :cond_28
    const/4 v0, -0x1

    .line 1182
    .local v0, "a":I
    const/4 v4, -0x1

    .line 1183
    .local v4, "r":I
    const/4 v3, -0x1

    .line 1184
    .local v3, "g":I
    const/4 v2, -0x1

    .line 1187
    .local v2, "b":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#"

    const-string v8, ""

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1189
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_74

    .line 1190
    invoke-virtual {v5, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1191
    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 1192
    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 1193
    const/16 v6, 0x8

    invoke-virtual {v5, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 1195
    invoke-static {v0, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 1203
    :goto_73
    return v6

    .line 1196
    :cond_74
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v12, :cond_99

    .line 1197
    const/16 v0, 0xff

    .line 1198
    invoke-virtual {v5, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1199
    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 1200
    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 1201
    invoke-static {v0, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    goto :goto_73

    .line 1203
    :cond_99
    invoke-static {v0, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    goto :goto_73
.end method

.method private copyUriToFile(Landroid/net/Uri;Ljava/io/File;)V
    .registers 16
    .param p1, "srcUri"    # Landroid/net/Uri;
    .param p2, "target"    # Ljava/io/File;

    .prologue
    .line 1373
    const/4 v9, 0x0

    .line 1374
    .local v9, "inputStream":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 1375
    .local v10, "outputStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 1376
    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 1378
    .local v8, "fcout":Ljava/nio/channels/FileChannel;
    :try_start_4
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/io/FileInputStream;

    move-object v9, v0

    .line 1380
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_5d
    .catchall {:try_start_4 .. :try_end_15} :catchall_83

    .line 1382
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .local v11, "outputStream":Ljava/io/FileOutputStream;
    :try_start_15
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 1383
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 1386
    if-eqz v3, :cond_44

    .line 1387
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 1388
    .local v6, "size":J
    iget-boolean v4, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v4, :cond_3f

    .line 1389
    sget-object v4, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file size : "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_3f
    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_44} :catch_b0
    .catchall {:try_start_15 .. :try_end_44} :catchall_ad

    .line 1401
    .end local v6    # "size":J
    :cond_44
    if-eqz v8, :cond_49

    .line 1402
    :try_start_46
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_99

    .line 1406
    :cond_49
    :goto_49
    if-eqz v3, :cond_4e

    .line 1407
    :try_start_4b
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_9b

    .line 1411
    :cond_4e
    :goto_4e
    if-eqz v11, :cond_53

    .line 1412
    :try_start_50
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_9d

    .line 1416
    :cond_53
    :goto_53
    if-eqz v9, :cond_58

    .line 1417
    :try_start_55
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5a

    :cond_58
    move-object v10, v11

    .line 1421
    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    :cond_59
    :goto_59
    return-void

    .line 1418
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "outputStream":Ljava/io/FileOutputStream;
    :catch_5a
    move-exception v4

    move-object v10, v11

    .line 1420
    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_59

    .line 1394
    :catch_5d
    move-exception v2

    .line 1395
    .local v2, "e":Ljava/lang/Exception;
    :goto_5e
    :try_start_5e
    iget-boolean v4, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v4, :cond_69

    .line 1396
    sget-object v4, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v5, "exception"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_69
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_83

    .line 1401
    if-eqz v8, :cond_71

    .line 1402
    :try_start_6e
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_9f

    .line 1406
    :cond_71
    :goto_71
    if-eqz v3, :cond_76

    .line 1407
    :try_start_73
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_a1

    .line 1411
    :cond_76
    :goto_76
    if-eqz v10, :cond_7b

    .line 1412
    :try_start_78
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_a3

    .line 1416
    :cond_7b
    :goto_7b
    if-eqz v9, :cond_59

    .line 1417
    :try_start_7d
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_59

    .line 1418
    :catch_81
    move-exception v4

    goto :goto_59

    .line 1400
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_83
    move-exception v4

    .line 1401
    :goto_84
    if-eqz v8, :cond_89

    .line 1402
    :try_start_86
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_a5

    .line 1406
    :cond_89
    :goto_89
    if-eqz v3, :cond_8e

    .line 1407
    :try_start_8b
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_a7

    .line 1411
    :cond_8e
    :goto_8e
    if-eqz v10, :cond_93

    .line 1412
    :try_start_90
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_a9

    .line 1416
    :cond_93
    :goto_93
    if-eqz v9, :cond_98

    .line 1417
    :try_start_95
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_ab

    .line 1419
    :cond_98
    :goto_98
    throw v4

    .line 1403
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "outputStream":Ljava/io/FileOutputStream;
    :catch_99
    move-exception v4

    goto :goto_49

    .line 1408
    :catch_9b
    move-exception v4

    goto :goto_4e

    .line 1413
    :catch_9d
    move-exception v4

    goto :goto_53

    .line 1403
    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "e":Ljava/lang/Exception;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    :catch_9f
    move-exception v4

    goto :goto_71

    .line 1408
    :catch_a1
    move-exception v4

    goto :goto_76

    .line 1413
    :catch_a3
    move-exception v4

    goto :goto_7b

    .line 1403
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_a5
    move-exception v5

    goto :goto_89

    .line 1408
    :catch_a7
    move-exception v5

    goto :goto_8e

    .line 1413
    :catch_a9
    move-exception v5

    goto :goto_93

    .line 1418
    :catch_ab
    move-exception v5

    goto :goto_98

    .line 1400
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_ad
    move-exception v4

    move-object v10, v11

    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_84

    .line 1394
    .end local v10    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "outputStream":Ljava/io/FileOutputStream;
    :catch_b0
    move-exception v2

    move-object v10, v11

    .end local v11    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_5e
.end method

.method private createCustomDialog()V
    .registers 6

    .prologue
    .line 1551
    new-instance v2, Lcom/pantech/inputmethod/style/StyleSettingActivity$5;

    invoke-direct {v2, p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity$5;-><init>(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V

    .line 1577
    .local v2, "resetDialogListener":Landroid/content/DialogInterface$OnClickListener;
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1578
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030017

    const v3, 0x7f100068

    invoke-virtual {p0, v3}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mResetDialogView:Landroid/view/View;

    .line 1582
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c010f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mResetDialogView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c00e3

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c00e4

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1588
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mResetDialog:Landroid/app/AlertDialog;

    .line 1591
    iget-object v3, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mResetDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1592
    iget-object v3, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mResetDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/pantech/inputmethod/style/StyleSettingActivity$6;

    invoke-direct {v4, p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity$6;-><init>(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1599
    return-void
.end method

.method private cropImage()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 1424
    iget-boolean v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v6, :cond_c

    .line 1425
    sget-object v6, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v7, "cropImage"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_c
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.CROP"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1428
    .local v3, "intent":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getTempImageFileNewForPick()Ljava/io/File;

    move-result-object v2

    .line 1429
    .local v2, "image":Ljava/io/File;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "image/*"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1430
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1432
    .local v0, "cropToolLists":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v6, "aspectX"

    iget v7, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCropAspectWidth:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1433
    const-string v6, "aspectY"

    iget v7, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCropAspectHeight:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1435
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 1437
    .local v5, "uri":Landroid/net/Uri;
    const-string v6, "output"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1439
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1440
    .local v1, "i":Landroid/content/Intent;
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1441
    .local v4, "res":Landroid/content/pm/ResolveInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1448
    const/high16 v6, 0x40000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1449
    const v6, 0xdbba3

    invoke-virtual {p0, v1, v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1450
    return-void
.end method

.method private deleteTemporaryImageFiles()V
    .registers 5

    .prologue
    .line 434
    :try_start_0
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getTempImageFileNewForCrop()Ljava/io/File;

    move-result-object v1

    .line 435
    .local v1, "temp":Ljava/io/File;
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getTempImageFileNewForPick()Ljava/io/File;
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_1b

    move-result-object v2

    .line 440
    .local v2, "temp2":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 441
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 443
    :cond_11
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 444
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 446
    .end local v1    # "temp":Ljava/io/File;
    .end local v2    # "temp2":Ljava/io/File;
    :cond_1a
    :goto_1a
    return-void

    .line 436
    :catch_1b
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_1a
.end method

.method private doFinalProcess()V
    .registers 8

    .prologue
    .line 1453
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getTempImageFileNewForPick()Ljava/io/File;

    move-result-object v3

    .line 1454
    .local v3, "image":Ljava/io/File;
    iget-boolean v5, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v5, :cond_f

    .line 1455
    sget-object v5, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v6, "doFinalProcess"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_f
    invoke-direct {p0, v3}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->loadImageWithSampleSize(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1461
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_41

    .line 1462
    invoke-direct {p0, v1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->resizeImageWithinBoundary(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1464
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getTempImageFileNewForCrop()Ljava/io/File;

    move-result-object v4

    .line 1465
    .local v4, "image_crop":Ljava/io/File;
    invoke-direct {p0, v1, v4}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 1466
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1468
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    const v5, 0x7f1000ed

    invoke-virtual {p0, v5}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1470
    .local v0, "bg_layout":Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_37

    .line 1471
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1474
    :cond_37
    iget-object v5, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mDeleteImageButton:Landroid/widget/ImageButton;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1475
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->updatePreview(Z)V

    .line 1478
    .end local v0    # "bg_layout":Landroid/widget/RelativeLayout;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "image_crop":Ljava/io/File;
    :cond_41
    return-void
.end method

.method private getTempImageFile()Ljava/io/File;
    .registers 5

    .prologue
    .line 1287
    iget-boolean v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 1288
    sget-object v2, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v3, "->getTempImageFile"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_b
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/pantech/inputmethod/style/StyleContants;->PATH_KEYBOARD_IMAGE_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1293
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1294
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1296
    :cond_1b
    new-instance v0, Ljava/io/File;

    const-string v2, "kbdimage.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1297
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method private getTempImageFileNewForCrop()Ljava/io/File;
    .registers 5

    .prologue
    .line 1313
    iget-boolean v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 1314
    sget-object v2, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v3, "->getTempImageFileNewForCrop"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_b
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/pantech/inputmethod/style/StyleContants;->PATH_KEYBOARD_IMAGE_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1317
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1318
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1320
    :cond_1b
    new-instance v0, Ljava/io/File;

    const-string v2, "kbdimage_new_temp.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1321
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method private getTempImageFileNewForPick()Ljava/io/File;
    .registers 5

    .prologue
    .line 1301
    iget-boolean v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 1302
    sget-object v2, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v3, "->getTempImageFileNewForPick"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_b
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/pantech/inputmethod/style/StyleContants;->PATH_KEYBOARD_IMAGE_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1305
    .local v1, "path":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1306
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1308
    :cond_1b
    new-instance v0, Ljava/io/File;

    const-string v2, "kbdimage_temp.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1309
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method private initETCButton()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1022
    const v0, 0x7f1000cc

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mResetButton:Landroid/widget/Button;

    .line 1023
    const v0, 0x7f100066

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCancelButton:Landroid/view/View;

    .line 1024
    const v0, 0x7f100067

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSaveButton:Landroid/view/View;

    .line 1027
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mResetButton:Landroid/widget/Button;

    if-eqz v0, :cond_29

    .line 1028
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mResetButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnClickListenerForETCButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1031
    :cond_29
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCancelButton:Landroid/view/View;

    if-eqz v0, :cond_34

    .line 1032
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCancelButton:Landroid/view/View;

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnClickListenerForETCButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    :cond_34
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSaveButton:Landroid/view/View;

    if-eqz v0, :cond_3f

    .line 1036
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSaveButton:Landroid/view/View;

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnClickListenerForETCButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    :cond_3f
    const v0, 0x7f1000e0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/widget/SkySlideTheme;

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarText:Lcom/pantech/widget/SkySlideTheme;

    .line 1042
    const v0, 0x7f1000e7

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/widget/SkySlideTheme;

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarKeyBackground:Lcom/pantech/widget/SkySlideTheme;

    .line 1043
    const v0, 0x7f1000eb

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/widget/SkySlideTheme;

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarOutline:Lcom/pantech/widget/SkySlideTheme;

    .line 1046
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarText:Lcom/pantech/widget/SkySlideTheme;

    if-eqz v0, :cond_69

    .line 1047
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarText:Lcom/pantech/widget/SkySlideTheme;

    invoke-virtual {v0, v2}, Lcom/pantech/widget/SkySlideTheme;->setPopupBox(Z)V

    .line 1050
    :cond_69
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarKeyBackground:Lcom/pantech/widget/SkySlideTheme;

    if-eqz v0, :cond_72

    .line 1051
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarKeyBackground:Lcom/pantech/widget/SkySlideTheme;

    invoke-virtual {v0, v2}, Lcom/pantech/widget/SkySlideTheme;->setPopupBox(Z)V

    .line 1054
    :cond_72
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarOutline:Lcom/pantech/widget/SkySlideTheme;

    if-eqz v0, :cond_7b

    .line 1055
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarOutline:Lcom/pantech/widget/SkySlideTheme;

    invoke-virtual {v0, v2}, Lcom/pantech/widget/SkySlideTheme;->setPopupBox(Z)V

    .line 1060
    :cond_7b
    const v0, 0x7f1000e4

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mTextView:Landroid/widget/ImageView;

    .line 1061
    const v0, 0x7f1000e8

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mBackgroundView:Landroid/widget/ImageView;

    .line 1062
    const v0, 0x7f1000ec

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOutlineView:Landroid/widget/ImageView;

    .line 1065
    new-instance v0, Lcom/pantech/inputmethod/style/StyleSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity$3;-><init>(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnSeekbarChangeListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    .line 1093
    new-instance v0, Lcom/pantech/inputmethod/style/StyleSettingActivity$4;

    invoke-direct {v0, p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity$4;-><init>(Lcom/pantech/inputmethod/style/StyleSettingActivity;)V

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnSeekbarChangeKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    .line 1120
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarText:Lcom/pantech/widget/SkySlideTheme;

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnSeekbarChangeListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkySlideTheme;->setOnSkySlideTouchListener(Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;)V

    .line 1121
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarKeyBackground:Lcom/pantech/widget/SkySlideTheme;

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnSeekbarChangeListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkySlideTheme;->setOnSkySlideTouchListener(Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;)V

    .line 1122
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarOutline:Lcom/pantech/widget/SkySlideTheme;

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnSeekbarChangeListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkySlideTheme;->setOnSkySlideTouchListener(Lcom/pantech/widget/SkySlideTheme$OnSkySlideTouchListener;)V

    .line 1125
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarText:Lcom/pantech/widget/SkySlideTheme;

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnSeekbarChangeKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkySlideTheme;->setOnSkySlideKeyListener(Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;)V

    .line 1126
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarKeyBackground:Lcom/pantech/widget/SkySlideTheme;

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnSeekbarChangeKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkySlideTheme;->setOnSkySlideKeyListener(Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;)V

    .line 1127
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarOutline:Lcom/pantech/widget/SkySlideTheme;

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnSeekbarChangeKeyListener:Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkySlideTheme;->setOnSkySlideKeyListener(Lcom/pantech/widget/SkySlideTheme$OnSkySlideKeyListener;)V

    .line 1131
    const v0, 0x7f1000ed

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyboardImageContainer:Landroid/widget/RelativeLayout;

    .line 1133
    const v0, 0x7f1000ef

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mAddImageButton:Landroid/widget/ImageButton;

    .line 1134
    const v0, 0x7f1000ee

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mDeleteImageButton:Landroid/widget/ImageButton;

    .line 1137
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mAddImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_100

    .line 1138
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mAddImageButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnClickListenerForETCButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1141
    :cond_100
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mDeleteImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_10b

    .line 1142
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mDeleteImageButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnClickListenerForETCButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1145
    :cond_10b
    return-void
.end method

.method private initLayout()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1001
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 1003
    .local v2, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f03001c

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1004
    .local v1, "detailView":Landroid/view/View;
    const/4 v0, 0x0

    .line 1006
    .local v0, "container":Landroid/widget/LinearLayout;
    const v3, 0x7f03001b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1007
    const v3, 0x7f1000e1

    invoke-virtual {p0, v3}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "container":Landroid/widget/LinearLayout;
    check-cast v0, Landroid/widget/LinearLayout;

    .line 1010
    .restart local v0    # "container":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_26

    .line 1011
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1014
    :cond_26
    return-void
.end method

.method private initPreference()V
    .registers 2

    .prologue
    .line 1017
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPref:Landroid/content/SharedPreferences;

    .line 1018
    return-void
.end method

.method private initPresetButtonList()V
    .registers 11

    .prologue
    .line 1154
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1156
    .local v5, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPresetButtonIdArray:[I

    array-length v6, v6

    if-ge v1, v6, :cond_30

    .line 1157
    iget-object v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPresetButtonIdArray:[I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "styleBtn_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v7, v8, v9, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v1

    .line 1156
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1162
    :cond_30
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPresetButtonIdArray:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_34
    if-ge v2, v4, :cond_46

    aget v3, v0, v2

    .line 1163
    .local v3, "id":I
    iget-object v7, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPresetButtonList:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 1165
    .end local v3    # "id":I
    :cond_46
    return-void
.end method

.method private initPreviewButton()V
    .registers 4

    .prologue
    .line 988
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_number:[Lcom/pantech/inputmethod/style/PreviewButton;

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 989
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_number:[Lcom/pantech/inputmethod/style/PreviewButton;

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mNumberId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/style/PreviewButton;

    aput-object v1, v2, v0

    .line 988
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 991
    :cond_17
    const/4 v0, 0x0

    :goto_18
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_normal:[Lcom/pantech/inputmethod/style/PreviewButton;

    array-length v1, v1

    if-ge v0, v1, :cond_2e

    .line 992
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_normal:[Lcom/pantech/inputmethod/style/PreviewButton;

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mNormalId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/style/PreviewButton;

    aput-object v1, v2, v0

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 994
    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    array-length v1, v1

    if-ge v0, v1, :cond_45

    .line 995
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mFunctionId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/style/PreviewButton;

    aput-object v1, v2, v0

    .line 994
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 997
    :cond_45
    return-void
.end method

.method private initPreviewButtonId()V
    .registers 7

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 973
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mNumberId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_30

    .line 974
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mNumberId:[I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_num_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 973
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 977
    :cond_30
    const/4 v0, 0x0

    :goto_31
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mNormalId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5c

    .line 978
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mNormalId:[I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_normal_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 977
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 981
    :cond_5c
    const/4 v0, 0x0

    :goto_5d
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mFunctionId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_88

    .line 982
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mFunctionId:[I

    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key_function_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v3, v4, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 981
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 985
    :cond_88
    return-void
.end method

.method private initPreviewButtons()V
    .registers 1

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->initPreviewButtonId()V

    .line 968
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->initPreviewButton()V

    .line 969
    return-void
.end method

.method private initialize()V
    .registers 1

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->initLayout()V

    .line 669
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->initPreviewButtons()V

    .line 670
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->initPresetButtonList()V

    .line 671
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->setOnClickListener()V

    .line 672
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->initETCButton()V

    .line 673
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->initPreference()V

    .line 674
    return-void
.end method

.method private isKeyboardBackgroundImageSelected()Z
    .registers 2

    .prologue
    .line 1208
    iget-boolean v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyboardBackgroundImageSelected:Z

    return v0
.end method

.method private loadImageWithSampleSize(Ljava/io/File;)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1352
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1353
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1354
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1355
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1356
    .local v5, "width":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1357
    .local v1, "height":I
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1358
    .local v2, "longSide":I
    const/4 v4, 0x1

    .line 1359
    .local v4, "sampleSize":I
    iget v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mImageSizeBoundary:I

    if-le v2, v6, :cond_21

    .line 1360
    iget v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mImageSizeBoundary:I

    div-int v4, v2, v6

    .line 1362
    :cond_21
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1363
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1364
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1365
    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1367
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1369
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private loadSettings()V
    .registers 5

    .prologue
    const/16 v3, 0x64

    .line 677
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "theme_type"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentSelectedPresetIndex:I

    .line 679
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "opacity_text"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    .line 680
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "opacity_key_background"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentKeyBackgroundOpacity:I

    .line 682
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "opacitiy_outline"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentOutlineOpacity:I

    .line 683
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "keyboard_background_image_selected"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyboardBackgroundImageSelected:Z

    .line 685
    return-void
.end method

.method private resetOpacitity()V
    .registers 2

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->updateSeekbarOriginal()V

    .line 689
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->updatePreview(Z)V

    .line 690
    return-void
.end method

.method private resizeBitmapWithHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "wantedHeight"    # I

    .prologue
    .line 1512
    if-nez p1, :cond_4

    .line 1513
    const/4 v2, 0x0

    .line 1527
    :goto_3
    return-object v2

    .line 1515
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1516
    .local v5, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1518
    .local v0, "height":I
    int-to-float v6, p2

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    int-to-float v7, v0

    div-float v1, v6, v7

    .line 1521
    .local v1, "resizeFactor":F
    int-to-float v6, v5

    mul-float/2addr v6, v1

    float-to-int v4, v6

    .line 1522
    .local v4, "targetWidth":I
    int-to-float v6, v0

    mul-float/2addr v6, v1

    float-to-int v3, v6

    .line 1524
    .local v3, "targetHeight":I
    const/4 v6, 0x1

    invoke-static {p1, v4, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1527
    .local v2, "resizedBitmap":Landroid/graphics/Bitmap;
    goto :goto_3
.end method

.method private resizeBitmapWithWidth(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "wantedWidth"    # I

    .prologue
    .line 1531
    if-nez p1, :cond_4

    .line 1532
    const/4 v2, 0x0

    .line 1546
    :goto_3
    return-object v2

    .line 1534
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1535
    .local v5, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1537
    .local v0, "height":I
    int-to-float v6, p2

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    int-to-float v7, v5

    div-float v1, v6, v7

    .line 1540
    .local v1, "resizeFactor":F
    int-to-float v6, v5

    mul-float/2addr v6, v1

    float-to-int v4, v6

    .line 1541
    .local v4, "targetWidth":I
    int-to-float v6, v0

    mul-float/2addr v6, v1

    float-to-int v3, v6

    .line 1543
    .local v3, "targetHeight":I
    const/4 v6, 0x1

    invoke-static {p1, v4, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1546
    .local v2, "resizedBitmap":Landroid/graphics/Bitmap;
    goto :goto_3
.end method

.method private resizeImageWithinBoundary(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1496
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1497
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1499
    .local v0, "height":I
    if-le v1, v0, :cond_15

    .line 1500
    iget v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mImageSizeBoundary:I

    if-le v1, v2, :cond_14

    .line 1501
    iget v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mImageSizeBoundary:I

    invoke-direct {p0, p1, v2}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->resizeBitmapWithWidth(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1508
    :cond_14
    :goto_14
    return-object p1

    .line 1504
    :cond_15
    iget v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mImageSizeBoundary:I

    if-le v0, v2, :cond_14

    .line 1505
    iget v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mImageSizeBoundary:I

    invoke-direct {p0, p1, v2}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->resizeBitmapWithHeight(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_14
.end method

.method private saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .registers 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "image"    # Ljava/io/File;

    .prologue
    .line 1482
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1483
    .local v1, "fos":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1484
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_10} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_21

    .line 1493
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_10
    return-void

    .line 1485
    :catch_11
    move-exception v0

    .line 1486
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-boolean v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v2, :cond_1d

    .line 1487
    sget-object v2, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v3, "file not found here"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_1d
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_10

    .line 1490
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_21
    move-exception v0

    .line 1491
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10
.end method

.method private setKeyboardBackgroundImage(Z)V
    .registers 2
    .param p1, "selected"    # Z

    .prologue
    .line 1212
    iput-boolean p1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyboardBackgroundImageSelected:Z

    .line 1213
    return-void
.end method

.method private setOnClickListener()V
    .registers 4

    .prologue
    .line 1148
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPresetButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1149
    .local v0, "button":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOnClickListenerForPresetButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 1151
    .end local v0    # "button":Landroid/widget/FrameLayout;
    :cond_18
    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1325
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1327
    return-void
.end method

.method private updateDefaultValues()V
    .registers 8

    .prologue
    .line 808
    iget v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentSelectedPresetIndex:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/pantech/inputmethod/style/KeyDrawable;->KEYBOARD_PRESETS:[I

    array-length v2, v2

    if-gt v1, v2, :cond_25

    .line 811
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/pantech/inputmethod/skyime/R$styleable;->KeyboardPreset:[I

    const/4 v4, 0x3

    sget-object v5, Lcom/pantech/inputmethod/style/KeyDrawable;->KEYBOARD_PRESETS:[I

    iget v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentSelectedPresetIndex:I

    aget v5, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 817
    .local v0, "a":Landroid/content/res/TypedArray;
    new-instance v1, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    invoke-direct {v1, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;-><init>(Landroid/content/res/TypedArray;)V

    sput-object v1, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    .line 818
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 820
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_25
    return-void
.end method

.method private updatePreview(Z)V
    .registers 22
    .param p1, "doUpdateBg"    # Z

    .prologue
    .line 843
    sget-object v2, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    if-nez v2, :cond_d

    .line 844
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 964
    :goto_c
    return-void

    .line 857
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_normal:[Lcom/pantech/inputmethod/style/PreviewButton;

    .local v11, "arr$":[Lcom/pantech/inputmethod/style/PreviewButton;
    array-length v0, v11

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_15
    move/from16 v0, v17

    if-ge v15, v0, :cond_78

    aget-object v12, v11, v15

    .line 858
    .local v12, "button":Lcom/pantech/inputmethod/style/PreviewButton;
    sget-object v2, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget v2, v2, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mGap:I

    int-to-double v2, v2

    sget-object v4, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v4, v4, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mNormalKeyColor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentKeyBackgroundOpacity:I

    invoke-static {v4, v5}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v5, v5, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mNormalKeyColor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentKeyBackgroundOpacity:I

    invoke-static {v5, v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v5

    sget-object v6, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget v6, v6, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mOutlineThickness:I

    int-to-double v6, v6

    sget-object v8, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v8, v8, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mNormalOutlineColor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentOutlineOpacity:I

    invoke-static {v8, v9}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v8

    sget-object v9, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget v9, v9, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mCorner_radius:I

    int-to-double v9, v9

    invoke-static/range {v2 .. v10}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 868
    .local v18, "normal":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/pantech/inputmethod/style/PreviewButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 869
    sget-object v2, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v2, v2, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mTextColor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/pantech/inputmethod/style/PreviewButton;->setTextColor(I)V

    .line 871
    sget-object v2, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v2, v2, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mLongPressColor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/pantech/inputmethod/style/PreviewButton;->setHintLongPressTextColor(I)V

    .line 857
    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    .line 876
    .end local v12    # "button":Lcom/pantech/inputmethod/style/PreviewButton;
    .end local v18    # "normal":Landroid/graphics/drawable/Drawable;
    :cond_78
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_number:[Lcom/pantech/inputmethod/style/PreviewButton;

    array-length v0, v11

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_80
    move/from16 v0, v17

    if-ge v15, v0, :cond_d4

    aget-object v12, v11, v15

    .line 877
    .restart local v12    # "button":Lcom/pantech/inputmethod/style/PreviewButton;
    sget-object v2, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget v2, v2, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mGap:I

    int-to-double v2, v2

    sget-object v4, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v4, v4, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mNumberKeyColor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentKeyBackgroundOpacity:I

    invoke-static {v4, v5}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v5, v5, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mNumberKeyColor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentKeyBackgroundOpacity:I

    invoke-static {v5, v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v5

    sget-object v6, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget v6, v6, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mOutlineThickness:I

    int-to-double v6, v6

    sget-object v8, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v8, v8, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mNumberOutlineColor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentOutlineOpacity:I

    invoke-static {v8, v9}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v8

    sget-object v9, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget v9, v9, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mCorner_radius:I

    int-to-double v9, v9

    invoke-static/range {v2 .. v10}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 887
    .local v19, "number":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/pantech/inputmethod/style/PreviewButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 888
    sget-object v2, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v2, v2, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mNumberColor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/pantech/inputmethod/style/PreviewButton;->setTextColor(I)V

    .line 876
    add-int/lit8 v15, v15, 0x1

    goto :goto_80

    .line 892
    .end local v12    # "button":Lcom/pantech/inputmethod/style/PreviewButton;
    .end local v19    # "number":Landroid/graphics/drawable/Drawable;
    :cond_d4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    array-length v0, v11

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_dc
    move/from16 v0, v17

    if-ge v15, v0, :cond_12e

    aget-object v12, v11, v15

    .line 893
    .restart local v12    # "button":Lcom/pantech/inputmethod/style/PreviewButton;
    sget-object v2, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget v2, v2, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mGap:I

    int-to-double v2, v2

    sget-object v4, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v4, v4, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mFunctionKeyColor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentKeyBackgroundOpacity:I

    invoke-static {v4, v5}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v5, v5, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mFunctionKeyColor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentKeyBackgroundOpacity:I

    invoke-static {v5, v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v5

    sget-object v6, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget v6, v6, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mOutlineThickness:I

    int-to-double v6, v6

    sget-object v8, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v8, v8, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mFunctionOutlineColor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentOutlineOpacity:I

    invoke-static {v8, v9}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v8

    sget-object v9, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget v9, v9, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mCorner_radius:I

    int-to-double v9, v9

    invoke-static/range {v2 .. v10}, Lcom/pantech/inputmethod/style/DrawableFactory;->MakeDrawable(DIIDID)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 905
    .local v14, "function":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12, v14}, Lcom/pantech/inputmethod/style/PreviewButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 906
    sget-object v2, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v2, v2, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mFunctionColor:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    invoke-static {v2, v3}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/pantech/inputmethod/style/PreviewButton;->setTextColor(I)V

    .line 892
    add-int/lit8 v15, v15, 0x1

    goto :goto_dc

    .line 910
    .end local v12    # "button":Lcom/pantech/inputmethod/style/PreviewButton;
    .end local v14    # "function":Landroid/graphics/drawable/Drawable;
    :cond_12e
    const v2, 0x7f100084

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreviewContainer:Landroid/widget/LinearLayout;

    .line 912
    if-eqz p1, :cond_16e

    .line 914
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->isKeyboardBackgroundImageSelected()Z

    move-result v2

    if-eqz v2, :cond_1b6

    .line 915
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getTempImageFileNewForCrop()Ljava/io/File;

    move-result-object v16

    .line 917
    .local v16, "kbdImageFile":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b1

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1b1

    .line 922
    :goto_159
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 926
    .local v13, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreviewContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_16e

    .line 927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreviewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 943
    .end local v13    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v16    # "kbdImageFile":Ljava/io/File;
    :cond_16e
    :goto_16e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mTextView:Landroid/widget/ImageView;

    sget-object v3, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v3, v3, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mTextColor:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mBackgroundView:Landroid/widget/ImageView;

    sget-object v3, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v3, v3, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mNormalKeyColor:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOutlineView:Landroid/widget/ImageView;

    sget-object v3, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v3, v3, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mNormalOutlineColor:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 960
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->updatePreviewIcons()V

    .line 961
    const/16 v18, 0x0

    .line 962
    .restart local v18    # "normal":Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .line 963
    .restart local v19    # "number":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    .line 964
    .restart local v14    # "function":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_c

    .line 920
    .end local v14    # "function":Landroid/graphics/drawable/Drawable;
    .end local v18    # "normal":Landroid/graphics/drawable/Drawable;
    .end local v19    # "number":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "kbdImageFile":Ljava/io/File;
    :cond_1b1
    invoke-direct/range {p0 .. p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getTempImageFile()Ljava/io/File;

    move-result-object v16

    goto :goto_159

    .line 932
    .end local v16    # "kbdImageFile":Ljava/io/File;
    :cond_1b6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreviewContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_16e

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreviewContainer:Landroid/widget/LinearLayout;

    sget-object v3, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget-object v3, v3, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mKeyboardBackground:Ljava/lang/String;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->convertColorIntWithAlpha(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_16e
.end method

.method private updatePreviewIcons()V
    .registers 11

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x7

    const/4 v4, 0x6

    const/4 v7, 0x5

    const/16 v6, 0x9

    .line 752
    const/4 v1, 0x0

    .line 754
    .local v1, "index":I
    const/4 v0, 0x1

    .line 755
    .local v0, "iconType":I
    iget v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentSelectedPresetIndex:I

    if-ltz v2, :cond_1a

    iget v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentSelectedPresetIndex:I

    sget-object v3, Lcom/pantech/inputmethod/skyime/settings/SkySettings;->ICONTYPE:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1a

    .line 756
    sget-object v2, Lcom/pantech/inputmethod/skyime/settings/SkySettings;->ICONTYPE:[I

    iget v3, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentSelectedPresetIndex:I

    aget v0, v2, v3

    .line 758
    :cond_1a
    const/4 v2, 0x1

    if-ne v0, v2, :cond_e0

    .line 759
    const/4 v1, 0x1

    .line 782
    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, -0x1

    .line 784
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    aget-object v2, v2, v4

    iget v3, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/style/PreviewButton;->setIconAlpha(I)V

    .line 785
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    aget-object v2, v2, v4

    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables:[[I

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/style/PreviewButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 787
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    aget-object v2, v2, v8

    iget v3, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/style/PreviewButton;->setIconAlpha(I)V

    .line 788
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    aget-object v2, v2, v8

    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables:[[I

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/style/PreviewButton;->setHintIcon(Landroid/graphics/drawable/Drawable;)V

    .line 790
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    iget v3, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/style/PreviewButton;->setIconAlpha(I)V

    .line 793
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    aget-object v2, v2, v6

    iget v3, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/style/PreviewButton;->setIconAlpha(I)V

    .line 794
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    aget-object v2, v2, v6

    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables:[[I

    aget-object v4, v4, v1

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/style/PreviewButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 796
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    aget-object v2, v2, v6

    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables:[[I

    aget-object v4, v4, v1

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/style/PreviewButton;->setHintIcon(Landroid/graphics/drawable/Drawable;)V

    .line 798
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    aget-object v2, v2, v9

    iget v3, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/style/PreviewButton;->setIconAlpha(I)V

    .line 799
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    aget-object v2, v2, v9

    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables:[[I

    aget-object v4, v4, v1

    const/4 v5, 0x4

    aget v4, v4, v5

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/style/PreviewButton;->setHintIcon(Landroid/graphics/drawable/Drawable;)V

    .line 801
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    iget v3, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/style/PreviewButton;->setIconAlpha(I)V

    .line 802
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPreview_function:[Lcom/pantech/inputmethod/style/PreviewButton;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->drawables:[[I

    aget-object v4, v4, v1

    aget v4, v4, v7

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/inputmethod/style/PreviewButton;->setHintIcon(Landroid/graphics/drawable/Drawable;)V

    .line 804
    return-void

    .line 760
    :cond_e0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_e6

    .line 761
    const/4 v1, 0x2

    goto/16 :goto_1e

    .line 762
    :cond_e6
    const/4 v2, 0x3

    if-ne v0, v2, :cond_f2

    .line 763
    const/4 v1, 0x3

    .line 764
    iget v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentSelectedPresetIndex:I

    if-ne v2, v7, :cond_1e

    .line 765
    const/16 v1, 0x9

    goto/16 :goto_1e

    .line 767
    :cond_f2
    const/4 v2, 0x4

    if-ne v0, v2, :cond_f8

    .line 768
    const/4 v1, 0x4

    goto/16 :goto_1e

    .line 769
    :cond_f8
    if-ne v0, v7, :cond_fd

    .line 770
    const/4 v1, 0x5

    goto/16 :goto_1e

    .line 771
    :cond_fd
    if-ne v0, v4, :cond_102

    .line 772
    const/4 v1, 0x6

    goto/16 :goto_1e

    .line 773
    :cond_102
    if-ne v0, v8, :cond_107

    .line 774
    const/4 v1, 0x7

    goto/16 :goto_1e

    .line 775
    :cond_107
    const/16 v2, 0x8

    if-ne v0, v2, :cond_10f

    .line 776
    const/16 v1, 0x8

    goto/16 :goto_1e

    .line 777
    :cond_10f
    if-eq v0, v6, :cond_113

    if-ne v0, v9, :cond_1e

    .line 779
    :cond_113
    const/16 v1, 0x9

    goto/16 :goto_1e
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1331
    iget-boolean v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v2, :cond_28

    .line 1332
    sget-object v2, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resultCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requestCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_28
    const v2, 0xdbba1

    if-ne p1, v2, :cond_40

    if-ne p2, v5, :cond_40

    .line 1336
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1337
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getTempImageFileNewForPick()Ljava/io/File;

    move-result-object v0

    .line 1338
    .local v0, "image":Ljava/io/File;
    invoke-direct {p0, v1, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->copyUriToFile(Landroid/net/Uri;Ljava/io/File;)V

    .line 1339
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->cropImage()V

    .line 1341
    iput-boolean v6, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mIsImageCroped:Z

    .line 1349
    .end local v0    # "image":Ljava/io/File;
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_3f
    return-void

    .line 1343
    :cond_40
    const v2, 0xdbba3

    if-ne p1, v2, :cond_4e

    if-ne p2, v5, :cond_4e

    .line 1344
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->doFinalProcess()V

    .line 1345
    invoke-direct {p0, v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->setKeyboardBackgroundImage(Z)V

    goto :goto_3f

    .line 1347
    :cond_4e
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_3f
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 481
    iget-boolean v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 482
    sget-object v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 488
    invoke-static {p0}, Lcom/pantech/widget/RR;->Init(Landroid/content/Context;)Z

    .line 492
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOrientation:I

    .line 494
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->setContentView(I)V

    .line 496
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 497
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 499
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->initialize()V

    .line 500
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->loadSettings()V

    .line 501
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 508
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 509
    .local v1, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f0f0000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 510
    const v2, 0x7f0c0106

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 511
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 609
    sget-object v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_b
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/inputmethod/style/RecycleUtil;->recursiveRecycle(Landroid/view/View;)V

    .line 613
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 616
    iget-boolean v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v0, :cond_43

    .line 617
    sget-object v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrientationChanging : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOrientationChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsImageCroped : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mIsImageCroped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_43
    sget-boolean v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOrientationChanging:Z

    if-nez v0, :cond_59

    iget-boolean v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mIsImageCroped:Z

    if-nez v0, :cond_59

    .line 620
    iget-boolean v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v0, :cond_56

    .line 621
    sget-object v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v1, "destroy not orientation changing delete temp files."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_56
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->deleteTemporaryImageFiles()V

    .line 627
    :cond_59
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 628
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 633
    const/4 v0, 0x4

    if-ne p1, v0, :cond_11

    .line 634
    iget-boolean v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 635
    sget-object v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v1, "onKeyDown() delete temp files."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_e
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->deleteTemporaryImageFiles()V

    .line 639
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 517
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1a

    .line 528
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 519
    :sswitch_d
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->createCustomDialog()V

    .line 520
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_c

    .line 524
    :sswitch_16
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->finish()V

    goto :goto_c

    .line 517
    :sswitch_data_1a
    .sparse-switch
        0x102002c -> :sswitch_16
        0x7f1000f3 -> :sswitch_d
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 5

    .prologue
    .line 534
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 535
    iget-boolean v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 536
    sget-object v2, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v3, "onPause()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_e
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 542
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 543
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mResetDialog:Landroid/app/AlertDialog;

    .line 548
    :cond_22
    iget-object v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPresetButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 549
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_28

    .line 551
    .end local v1    # "view":Landroid/view/View;
    :cond_39
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 468
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 470
    const-string v0, "mCurrentSelectedPresetIndex"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentSelectedPresetIndex:I

    .line 471
    const-string v0, "mCurrentTextOpacity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    .line 472
    const-string v0, "mCurrentKeyBackgroundOpacity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentKeyBackgroundOpacity:I

    .line 473
    const-string v0, "mCurrentOutlineOpacity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentOutlineOpacity:I

    .line 474
    const-string v0, "mKeyboardBackgroundImageSelected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyboardBackgroundImageSelected:Z

    .line 475
    const-string v0, "mIsImageCroped"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mIsImageCroped:Z

    .line 476
    const-string v0, "mHasDeleteImage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mHasDeleteImage:Z

    .line 478
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 555
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 556
    iget-boolean v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v1, :cond_2a

    .line 557
    sget-object v1, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    sget-object v1, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasDeleteImage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mHasDeleteImage:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_2a
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mPresetButtonList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentSelectedPresetIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 562
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarText:Lcom/pantech/widget/SkySlideTheme;

    iget v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    invoke-virtual {v1, v2}, Lcom/pantech/widget/SkySlideTheme;->setProgress(I)V

    .line 563
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarKeyBackground:Lcom/pantech/widget/SkySlideTheme;

    iget v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentKeyBackgroundOpacity:I

    invoke-virtual {v1, v2}, Lcom/pantech/widget/SkySlideTheme;->setProgress(I)V

    .line 564
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarOutline:Lcom/pantech/widget/SkySlideTheme;

    iget v2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentOutlineOpacity:I

    invoke-virtual {v1, v2}, Lcom/pantech/widget/SkySlideTheme;->setProgress(I)V

    .line 566
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->isKeyboardBackgroundImageSelected()Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 567
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getTempImageFileNewForCrop()Ljava/io/File;

    move-result-object v0

    .line 570
    .local v0, "kbdImageFile":Ljava/io/File;
    iget-boolean v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v1, :cond_74

    .line 571
    sget-object v1, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsImageCroped : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mIsImageCroped:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_74
    iget-boolean v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mIsImageCroped:Z

    if-nez v1, :cond_8c

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 574
    iget-boolean v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v1, :cond_89

    .line 575
    sget-object v1, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v2, "delete temp"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_89
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->deleteTemporaryImageFiles()V

    .line 581
    :cond_8c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b2

    .line 587
    :goto_9c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b7

    .line 588
    invoke-direct {p0, v6}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->setKeyboardBackgroundImage(Z)V

    .line 589
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mDeleteImageButton:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 601
    .end local v0    # "kbdImageFile":Ljava/io/File;
    :cond_ab
    :goto_ab
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->updateDefaultValues()V

    .line 603
    invoke-direct {p0, v7}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->updatePreview(Z)V

    .line 604
    return-void

    .line 584
    .restart local v0    # "kbdImageFile":Ljava/io/File;
    :cond_b2
    invoke-direct {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getTempImageFile()Ljava/io/File;

    move-result-object v0

    goto :goto_9c

    .line 592
    :cond_b7
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyboardImageContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 595
    iget-object v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mDeleteImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_ab
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 456
    const-string v0, "mCurrentSelectedPresetIndex"

    iget v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentSelectedPresetIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 457
    const-string v0, "mCurrentTextOpacity"

    iget v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 458
    const-string v0, "mCurrentKeyBackgroundOpacity"

    iget v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentKeyBackgroundOpacity:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    const-string v0, "mCurrentOutlineOpacity"

    iget v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentOutlineOpacity:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    const-string v0, "mKeyboardBackgroundImageSelected"

    iget-boolean v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyboardBackgroundImageSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 461
    const-string v0, "mIsImageCroped"

    iget-boolean v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mIsImageCroped:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 462
    const-string v0, "mHasDeleteImage"

    iget-boolean v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mHasDeleteImage:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 464
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 645
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 646
    iget-boolean v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v1, :cond_e

    .line 647
    sget-object v1, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v2, "onStop()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_e
    invoke-virtual {p0}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 652
    .local v0, "orientation":I
    sget v1, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOrientation:I

    if-eq v0, v1, :cond_2b

    .line 653
    iget-boolean v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v1, :cond_27

    .line 654
    sget-object v1, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v2, "orientation changing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_27
    const/4 v1, 0x1

    sput-boolean v1, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOrientationChanging:Z

    .line 664
    :goto_2a
    return-void

    .line 658
    :cond_2b
    iget-boolean v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->DEBUG:Z

    if-eqz v1, :cond_36

    .line 659
    sget-object v1, Lcom/pantech/inputmethod/style/StyleSettingActivity;->TAG:Ljava/lang/String;

    const-string v2, "orientation not changing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_36
    const/4 v1, 0x0

    sput-boolean v1, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mOrientationChanging:Z

    goto :goto_2a
.end method

.method public setCropOption(II)V
    .registers 3
    .param p1, "aspectX"    # I
    .param p2, "aspectY"    # I

    .prologue
    .line 1227
    iput p1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCropAspectWidth:I

    .line 1228
    iput p2, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCropAspectHeight:I

    .line 1229
    return-void
.end method

.method public setImageSizeBoundary(I)V
    .registers 2
    .param p1, "sizePixel"    # I

    .prologue
    .line 1218
    iput p1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mImageSizeBoundary:I

    .line 1219
    return-void
.end method

.method public startSelectImage()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1236
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1b

    .line 1237
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1238
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    invoke-static {p0, v1, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1260
    :cond_1b
    :goto_1b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1263
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1265
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1271
    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1272
    const v1, 0xdbba1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/inputmethod/style/StyleSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1273
    return-void

    .line 1241
    .end local v0    # "i":Landroid/content/Intent;
    :cond_3a
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    invoke-static {p0, v1, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1b
.end method

.method public updateSeekbarOriginal()V
    .registers 3

    .prologue
    .line 232
    sget-object v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    if-nez v0, :cond_5

    .line 243
    :goto_4
    return-void

    .line 234
    :cond_5
    sget-object v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget v0, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mOpacity_text:I

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    .line 235
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarText:Lcom/pantech/widget/SkySlideTheme;

    iget v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentTextOpacity:I

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkySlideTheme;->setProgress(I)V

    .line 237
    sget-object v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget v0, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mOpacity_key_bg:I

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentKeyBackgroundOpacity:I

    .line 238
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarKeyBackground:Lcom/pantech/widget/SkySlideTheme;

    iget v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentKeyBackgroundOpacity:I

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkySlideTheme;->setProgress(I)V

    .line 240
    sget-object v0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mKeyPreviewDrawParam:Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;

    iget v0, v0, Lcom/pantech/inputmethod/style/StyleSettingActivity$KeyPreviewDrawParam;->mOpacity_outline:I

    iput v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentOutlineOpacity:I

    .line 241
    iget-object v0, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mSeeckbarOutline:Lcom/pantech/widget/SkySlideTheme;

    iget v1, p0, Lcom/pantech/inputmethod/style/StyleSettingActivity;->mCurrentOutlineOpacity:I

    invoke-virtual {v0, v1}, Lcom/pantech/widget/SkySlideTheme;->setProgress(I)V

    goto :goto_4
.end method
