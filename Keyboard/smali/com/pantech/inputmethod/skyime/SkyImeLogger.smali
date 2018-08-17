.class public Lcom/pantech/inputmethod/skyime/SkyImeLogger;
.super Ljava/lang/Object;
.source "SkyImeLogger.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static sDBG:Z

.field public static sUsabilityStudy:Z

.field public static sVISUALDEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const-class v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->TAG:Ljava/lang/String;

    .line 29
    sput-boolean v1, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    .line 30
    sput-boolean v1, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sVISUALDEBUG:Z

    .line 31
    sput-boolean v1, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sUsabilityStudy:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commit()V
    .registers 0

    .prologue
    .line 41
    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 38
    return-void
.end method

.method public static logOnAutoCorrection(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 3
    .param p0, "before"    # Ljava/lang/String;
    .param p1, "after"    # Ljava/lang/String;
    .param p2, "separatorCode"    # I

    .prologue
    .line 51
    return-void
.end method

.method public static logOnAutoCorrectionCancelled()V
    .registers 0

    .prologue
    .line 54
    return-void
.end method

.method public static logOnDelete(II)V
    .registers 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 57
    return-void
.end method

.method public static logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8
    .param p0, "metaData"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x0

    .line 66
    sget-boolean v3, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->sDBG:Z

    if-eqz v3, :cond_5b

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "method":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "line":Ljava/lang/String;
    sget-object v3, Lcom/pantech/inputmethod/skyime/SkyImeLogger;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "method":Ljava/lang/String;
    :cond_5b
    return-void
.end method

.method public static logOnInputChar()V
    .registers 0

    .prologue
    .line 60
    return-void
.end method

.method public static logOnInputSeparator()V
    .registers 0

    .prologue
    .line 63
    return-void
.end method

.method public static logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILcom/pantech/inputmethod/skyime/SuggestedWords;)V
    .registers 4
    .param p0, "before"    # Ljava/lang/String;
    .param p1, "after"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "suggestedWords"    # Lcom/pantech/inputmethod/skyime/SuggestedWords;

    .prologue
    .line 48
    return-void
.end method

.method public static logOnWarning(Ljava/lang/String;)V
    .registers 1
    .param p0, "warning"    # Ljava/lang/String;

    .prologue
    .line 75
    return-void
.end method

.method public static onAddSuggestedWord(Ljava/lang/String;II)V
    .registers 3
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "typeId"    # I
    .param p2, "dataType"    # I

    .prologue
    .line 84
    return-void
.end method

.method public static onDestroy()V
    .registers 0

    .prologue
    .line 44
    return-void
.end method

.method public static onPrintAllUsabilityStudyLogs()V
    .registers 0

    .prologue
    .line 90
    return-void
.end method

.method public static onSetKeyboard(Lcom/pantech/inputmethod/keyboard/Keyboard;)V
    .registers 1
    .param p0, "kb"    # Lcom/pantech/inputmethod/keyboard/Keyboard;

    .prologue
    .line 87
    return-void
.end method

.method public static onStartInputView(Landroid/view/inputmethod/EditorInfo;)V
    .registers 1
    .param p0, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 78
    return-void
.end method

.method public static onStartSuggestion(Ljava/lang/CharSequence;)V
    .registers 1
    .param p0, "previousWords"    # Ljava/lang/CharSequence;

    .prologue
    .line 81
    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 35
    return-void
.end method
