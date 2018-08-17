.class public Lcom/pantech/providers/skysettings/SKYGestureSuggestionProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "SKYGestureSuggestionProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 10
    const-string v0, "skygesturesuggestionprovider"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/providers/skysettings/SKYGestureSuggestionProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 11
    return-void
.end method
