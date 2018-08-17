.class public Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;
.super Landroid/preference/ListPreference;
.source "SKYSoundListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VEGASoundListPreference"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSoundValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private soundEffectEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mAudioManager:Landroid/media/AudioManager;

    .line 33
    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 34
    iput-boolean v3, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->soundEffectEnable:Z

    .line 39
    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mSummary:Ljava/lang/String;

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    return-void
.end method

.method static synthetic access$002(Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->stopPreSound()V

    return-void
.end method

.method static synthetic access$200(Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;)[Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mSoundValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->playPreSound(Ljava/lang/String;)V

    return-void
.end method

.method private getValueIndex()I
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private playPreSound(Ljava/lang/String;)V
    .registers 7
    .param p1, "prePlayPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 368
    if-eqz p1, :cond_13

    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 394
    :cond_13
    :goto_13
    return-void

    .line 372
    :cond_14
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_1f

    .line 373
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 377
    :cond_1f
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 378
    .local v2, "volume":I
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 379
    .local v0, "maxVolume":I
    int-to-float v3, v2

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 384
    .local v1, "playVolume":F
    :try_start_2f
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 387
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 388
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3f} :catch_45

    .line 393
    :goto_3f
    iget-object v3, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    goto :goto_13

    .line 389
    :catch_45
    move-exception v3

    goto :goto_3f
.end method

.method private stopPreSound()V
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 398
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 399
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 403
    :cond_11
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 214
    if-eqz p1, :cond_1b

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1b

    .line 215
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 216
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 221
    .end local v0    # "i":I
    :goto_17
    return v0

    .line 215
    .restart local v0    # "i":I
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 221
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    goto :goto_17
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->getValueIndex()I

    move-result v0

    .line 204
    .local v0, "index":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 5

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 150
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mSummary:Ljava/lang/String;

    if-eqz v1, :cond_a

    if-nez v0, :cond_f

    .line 151
    :cond_a
    invoke-super {p0}, Landroid/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 153
    :goto_e
    return-object v1

    :cond_f
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mSummary:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .registers 5
    .param p1, "positiveResult"    # Z

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 285
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->stopPreSound()V

    .line 287
    if-eqz p1, :cond_23

    iget v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_23

    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_23

    .line 288
    iget-object v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 290
    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setValue(Ljava/lang/String;)V

    .line 293
    .end local v0    # "value":Ljava/lang/String;
    :cond_23
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 297
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 5
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 232
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_13

    .line 233
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "VEGASoundListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_13
    invoke-direct {p0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mClickedDialogEntryIndex:I

    .line 238
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$1;

    invoke-direct {v2, p0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$1;-><init>(Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    const v0, 0x7f0c00e4

    new-instance v1, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$2;

    invoke-direct {v1, p0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$2;-><init>(Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 272
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 326
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 328
    :cond_e
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 335
    :goto_11
    return-void

    :cond_12
    move-object v0, p1

    .line 332
    check-cast v0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$SavedState;

    .line 333
    .local v0, "myState":Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$SavedState;
    invoke-virtual {v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 334
    iget-object v1, v0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_11
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 307
    invoke-super {p0}, Landroid/preference/ListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 311
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mClickedDialogEntryIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setValue(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 321
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_17
    return-object v1

    .line 318
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_18
    new-instance v0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 319
    .local v0, "myState":Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$SavedState;
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference$SavedState;->value:Ljava/lang/String;

    move-object v1, v0

    .line 321
    goto :goto_17
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 302
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_8
    invoke-virtual {p0, p2}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setValue(Ljava/lang/String;)V

    .line 303
    return-void

    .line 302
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_c
    check-cast p2, Ljava/lang/String;

    goto :goto_8
.end method

.method public setEntries(I)V
    .registers 3
    .param p1, "entriesResId"    # I

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 72
    return-void
.end method

.method public setEntryValues(I)V
    .registers 3
    .param p1, "entryValuesResId"    # I

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 100
    return-void
.end method

.method public setSoundEffectEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->soundEffectEnable:Z

    .line 407
    return-void
.end method

.method public setSoundValues(I)V
    .registers 3
    .param p1, "soundValuesResId"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setSoundValues([Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method public setSoundValues([Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "soundValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mSoundValues:[Ljava/lang/CharSequence;

    .line 112
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mSummary:Ljava/lang/String;

    .line 174
    :cond_c
    :goto_c
    return-void

    .line 171
    :cond_d
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 172
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mSummary:Ljava/lang/String;

    goto :goto_c
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mValue:Ljava/lang/String;

    .line 136
    invoke-virtual {p0, p1}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->persistString(Ljava/lang/String;)Z

    .line 137
    return-void
.end method

.method public setValueIndex(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    .line 183
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->setValue(Ljava/lang/String;)V

    .line 185
    :cond_f
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 278
    invoke-virtual {p0}, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 279
    .local v0, "listView":Landroid/widget/ListView;
    iget-boolean v1, p0, Lcom/pantech/inputmethod/skyime/settings/SKYSoundListPreference;->soundEffectEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 280
    return-void
.end method
