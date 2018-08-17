.class public Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;
.super Ljava/lang/Object;
.source "EditorInfoCompatUtils.java"


# static fields
.field private static final FIELD_IME_ACTION_PREVIOUS:Ljava/lang/reflect/Field;

.field private static final FIELD_IME_FLAG_NAVIGATE_NEXT:Ljava/lang/reflect/Field;

.field private static final FIELD_IME_FLAG_NAVIGATE_PREVIOUS:Ljava/lang/reflect/Field;

.field private static final OBJ_IME_ACTION_PREVIOUS:Ljava/lang/Integer;

.field private static final OBJ_IME_FLAG_NAVIGATE_NEXT:Ljava/lang/Integer;

.field private static final OBJ_IME_FLAG_NAVIGATE_PREVIOUS:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 25
    const-class v0, Landroid/view/inputmethod/EditorInfo;

    const-string v1, "IME_FLAG_NAVIGATE_NEXT"

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_FLAG_NAVIGATE_NEXT:Ljava/lang/reflect/Field;

    .line 27
    const-class v0, Landroid/view/inputmethod/EditorInfo;

    const-string v1, "IME_FLAG_NAVIGATE_PREVIOUS"

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_FLAG_NAVIGATE_PREVIOUS:Ljava/lang/reflect/Field;

    .line 29
    const-class v0, Landroid/view/inputmethod/EditorInfo;

    const-string v1, "IME_ACTION_PREVIOUS"

    invoke-static {v0, v1}, Lcom/pantech/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_ACTION_PREVIOUS:Ljava/lang/reflect/Field;

    .line 31
    sget-object v0, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_FLAG_NAVIGATE_NEXT:Ljava/lang/reflect/Field;

    invoke-static {v2, v2, v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_NAVIGATE_NEXT:Ljava/lang/Integer;

    .line 33
    sget-object v0, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_FLAG_NAVIGATE_PREVIOUS:Ljava/lang/reflect/Field;

    invoke-static {v2, v2, v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_NAVIGATE_PREVIOUS:Ljava/lang/Integer;

    .line 35
    sget-object v0, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_ACTION_PREVIOUS:Ljava/lang/reflect/Field;

    invoke-static {v2, v2, v0}, Lcom/pantech/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_ACTION_PREVIOUS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasFlagNavigateNext(I)Z
    .registers 3
    .param p0, "imeOptions"    # I

    .prologue
    const/4 v0, 0x0

    .line 39
    sget-object v1, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_NAVIGATE_NEXT:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 41
    :cond_5
    :goto_5
    return v0

    :cond_6
    sget-object v1, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_NAVIGATE_NEXT:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p0

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static hasFlagNavigatePrevious(I)Z
    .registers 3
    .param p0, "imeOptions"    # I

    .prologue
    const/4 v0, 0x0

    .line 45
    sget-object v1, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_NAVIGATE_PREVIOUS:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 47
    :cond_5
    :goto_5
    return v0

    :cond_6
    sget-object v1, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_NAVIGATE_PREVIOUS:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p0

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static imeOptionsName(I)Ljava/lang/String;
    .registers 5
    .param p0, "imeOptions"    # I

    .prologue
    .line 61
    const/4 v2, -0x1

    if-ne p0, v2, :cond_5

    .line 62
    const/4 v0, 0x0

    .line 99
    :cond_4
    :goto_4
    return-object v0

    .line 63
    :cond_5
    and-int/lit16 v1, p0, 0xff

    .line 65
    .local v1, "actionId":I
    packed-switch v1, :pswitch_data_60

    .line 88
    sget-object v2, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_ACTION_PREVIOUS:Ljava/lang/Integer;

    if-eqz v2, :cond_46

    sget-object v2, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_ACTION_PREVIOUS:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_46

    .line 89
    const-string v0, "actionPrevious"

    .line 96
    .local v0, "action":Ljava/lang/String;
    :goto_18
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, p0

    if-eqz v2, :cond_4

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flagNoEnterAction|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 67
    .end local v0    # "action":Ljava/lang/String;
    :pswitch_31
    const-string v0, "actionUnspecified"

    .line 68
    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_18

    .line 70
    .end local v0    # "action":Ljava/lang/String;
    :pswitch_34
    const-string v0, "actionNone"

    .line 71
    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_18

    .line 73
    .end local v0    # "action":Ljava/lang/String;
    :pswitch_37
    const-string v0, "actionGo"

    .line 74
    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_18

    .line 76
    .end local v0    # "action":Ljava/lang/String;
    :pswitch_3a
    const-string v0, "actionSearch"

    .line 77
    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_18

    .line 79
    .end local v0    # "action":Ljava/lang/String;
    :pswitch_3d
    const-string v0, "actionSend"

    .line 80
    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_18

    .line 82
    .end local v0    # "action":Ljava/lang/String;
    :pswitch_40
    const-string v0, "actionNext"

    .line 83
    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_18

    .line 85
    .end local v0    # "action":Ljava/lang/String;
    :pswitch_43
    const-string v0, "actionDone"

    .line 86
    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_18

    .line 91
    .end local v0    # "action":Ljava/lang/String;
    :cond_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actionUnknown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_18

    .line 65
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
    .end packed-switch
.end method

.method public static performEditorActionNext(Landroid/view/inputmethod/InputConnection;)V
    .registers 2
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 51
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 52
    return-void
.end method

.method public static performEditorActionPrevious(Landroid/view/inputmethod/InputConnection;)V
    .registers 2
    .param p0, "ic"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 55
    sget-object v0, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_ACTION_PREVIOUS:Ljava/lang/Integer;

    if-nez v0, :cond_5

    .line 58
    :goto_4
    return-void

    .line 57
    :cond_5
    sget-object v0, Lcom/pantech/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_ACTION_PREVIOUS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_4
.end method
