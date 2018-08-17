.class public Lcom/pantech/providers/skysettings/CallRejectNumberProvider;
.super Landroid/content/ContentProvider;
.source "CallRejectNumberProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/providers/skysettings/CallRejectNumberProvider$CallRejectionNumberDatabseHelper;,
        Lcom/pantech/providers/skysettings/CallRejectNumberProvider$Tables;
    }
.end annotation


# static fields
.field private static final ACCEPT_NUMBERS:I = 0x3

.field private static final ACCEPT_NUMBER_ID:I = 0x4

.field private static final DATABASE_NAME:Ljava/lang/String; = "callreject.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final REJECT_NUMBERS:I = 0x1

.field private static final REJECT_NUMBER_ID:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CallRejectNumberProvider"

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private callrejectDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 36
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 37
    sget-object v0, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "callreject"

    const-string v2, "reject"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    sget-object v0, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "callreject"

    const-string v2, "reject/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "callreject"

    const-string v2, "accept"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "callreject"

    const-string v2, "accept/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 131
    return-void
.end method

.method private getTableName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 73
    sget-object v0, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :pswitch_22
    const-string v0, "reject"

    .line 79
    :goto_24
    return-object v0

    :pswitch_25
    const-string v0, "accept"

    goto :goto_24

    .line 73
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_22
        :pswitch_22
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "table":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 105
    iget-object v2, p0, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->callrejectDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 109
    :goto_12
    return v0

    .line 107
    :cond_13
    iget-object v2, p0, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->callrejectDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_12
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 57
    sget-object v1, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 58
    .local v0, "match":I
    packed-switch v0, :pswitch_data_2e

    .line 68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :pswitch_22
    const-string v1, "vnd.android.cursor.dir/reject"

    .line 66
    :goto_24
    return-object v1

    .line 62
    :pswitch_25
    const-string v1, "vnd.android.cursor.item/reject"

    goto :goto_24

    .line 64
    :pswitch_28
    const-string v1, "vnd.android.cursor.dir/accept"

    goto :goto_24

    .line 66
    :pswitch_2b
    const-string v1, "vnd.android.cursor.item/accept"

    goto :goto_24

    .line 58
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "table":Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->callrejectDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, ""

    invoke-virtual {v4, v1, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 91
    .local v2, "rowID":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_23

    .line 92
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 93
    .local v0, "_uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 94
    return-object v0

    .line 96
    .end local v0    # "_uri":Landroid/net/Uri;
    :cond_23
    new-instance v4, Landroid/database/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert row into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onCreate()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 47
    invoke-virtual {p0}, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 50
    .local v2, "context":Landroid/content/Context;
    new-instance v0, Lcom/pantech/providers/skysettings/CallRejectNumberProvider$CallRejectionNumberDatabseHelper;

    const-string v3, "callreject.db"

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/providers/skysettings/CallRejectNumberProvider$CallRejectionNumberDatabseHelper;-><init>(Lcom/pantech/providers/skysettings/CallRejectNumberProvider;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 51
    .local v0, "dbHelper":Lcom/pantech/providers/skysettings/CallRejectNumberProvider$CallRejectionNumberDatabseHelper;
    invoke-virtual {v0}, Lcom/pantech/providers/skysettings/CallRejectNumberProvider$CallRejectionNumberDatabseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->callrejectDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    iget-object v1, p0, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->callrejectDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_19

    const/4 v5, 0x0

    :cond_19
    return v5
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 124
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 125
    .local v0, "sqlBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {p0, p1}, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->callrejectDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 127
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_25

    invoke-virtual {p0}, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 128
    :cond_25
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "table":Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->callrejectDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 116
    .local v0, "count":I
    if-lez v0, :cond_18

    .line 117
    invoke-virtual {p0}, Lcom/pantech/providers/skysettings/CallRejectNumberProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 119
    :cond_18
    return v0
.end method
