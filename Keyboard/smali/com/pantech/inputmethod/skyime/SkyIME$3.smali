.class Lcom/pantech/inputmethod/skyime/SkyIME$3;
.super Landroid/telephony/PhoneStateListener;
.source "SkyIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/SkyIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/inputmethod/skyime/SkyIME;


# direct methods
.method constructor <init>(Lcom/pantech/inputmethod/skyime/SkyIME;)V
    .registers 2

    .prologue
    .line 810
    iput-object p1, p0, Lcom/pantech/inputmethod/skyime/SkyIME$3;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "ignored"    # Ljava/lang/String;

    .prologue
    .line 813
    iget-object v0, p0, Lcom/pantech/inputmethod/skyime/SkyIME$3;->this$0:Lcom/pantech/inputmethod/skyime/SkyIME;

    invoke-static {v0, p1}, Lcom/pantech/inputmethod/skyime/SkyIME;->access$1202(Lcom/pantech/inputmethod/skyime/SkyIME;I)I

    .line 814
    return-void
.end method
