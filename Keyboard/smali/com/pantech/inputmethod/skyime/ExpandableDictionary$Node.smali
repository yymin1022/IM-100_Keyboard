.class Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;
.super Ljava/lang/Object;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/inputmethod/skyime/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field mChildren:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NodeArray;

.field mCode:C

.field mFrequency:I

.field mNGrams:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pantech/inputmethod/skyime/ExpandableDictionary$NextWord;",
            ">;"
        }
    .end annotation
.end field

.field mParent:Lcom/pantech/inputmethod/skyime/ExpandableDictionary$Node;

.field mShortcutOnly:Z

.field mShortcutTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[C>;"
        }
    .end annotation
.end field

.field mTerminal:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
