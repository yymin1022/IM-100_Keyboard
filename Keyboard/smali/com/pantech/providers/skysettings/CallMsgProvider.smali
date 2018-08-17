.class public Lcom/pantech/providers/skysettings/CallMsgProvider;
.super Landroid/content/ContentProvider;
.source "CallMsgProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/providers/skysettings/CallMsgProvider$CallMsgDatabaseHelper;,
        Lcom/pantech/providers/skysettings/CallMsgProvider$Tables;
    }
.end annotation


# static fields
.field private static final CNAPMSG_ID:I = 0x6

.field private static final CNAPMSG_MSG:I = 0x5

.field private static final DATABASE_NAME:Ljava/lang/String; = "callmsg.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final OUTGOINGMSG_ID:I = 0x4

.field private static final OUTGOINGMSG_MSG:I = 0x3

.field private static final RECEIVINGMSG_ID:I = 0x2

.field private static final RECEIVINGMSG_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CallMsg"

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private m_DataBase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 44
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/pantech/providers/skysettings/CallMsgProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 45
    sget-object v0, Lcom/pantech/providers/skysettings/CallMsgProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "callmsg"

    const-string v2, "receivingmsg"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    sget-object v0, Lcom/pantech/providers/skysettings/CallMsgProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "callmsg"

    const-string v2, "receivingmsg/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    sget-object v0, Lcom/pantech/providers/skysettings/CallMsgProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "callmsg"

    const-string v2, "outgoingmsg"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    sget-object v0, Lcom/pantech/providers/skysettings/CallMsgProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "callmsg"

    const-string v2, "outgoingmsg/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    sget-object v0, Lcom/pantech/providers/skysettings/CallMsgProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "callmsg"

    const-string v2, "cnapmsg"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    sget-object v0, Lcom/pantech/providers/skysettings/CallMsgProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "callmsg"

    const-string v2, "cnapmsg/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 150
    return-void
.end method

.method private getTableName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 89
    sget-object v0, Lcom/pantech/providers/skysettings/CallMsgProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 100
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

    .line 92
    :pswitch_22
    const-string v0, "receivingmsg"

    .line 98
    :goto_24
    return-object v0

    .line 95
    :pswitch_25
    const-string v0, "outgoingmsg"

    goto :goto_24

    .line 98
    :pswitch_28
    const-string v0, "cnapmsg"

    goto :goto_24

    .line 89
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_22
        :pswitch_22
        :pswitch_25
        :pswitch_25
        :pswitch_28
        :pswitch_28
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

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/pantech/providers/skysettings/CallMsgProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "table":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 124
    iget-object v2, p0, Lcom/pantech/providers/skysettings/CallMsgProvider;->m_DataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 128
    :goto_12
    return v0

    .line 126
    :cond_13
    iget-object v2, p0, Lcom/pantech/providers/skysettings/CallMsgProvider;->m_DataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_12
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 69
    sget-object v0, Lcom/pantech/providers/skysettings/CallMsgProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_34

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :pswitch_22
    const-string v0, "vnd.android.cursor.dir/receivingmsg"

    .line 82
    :goto_24
    return-object v0

    .line 74
    :pswitch_25
    const-string v0, "vnd.android.cursor.item/receivingmsg"

    goto :goto_24

    .line 76
    :pswitch_28
    const-string v0, "vnd.android.cursor.dir/outgoingmsg"

    goto :goto_24

    .line 78
    :pswitch_2b
    const-string v0, "vnd.android.cursor.item/outgoingmsg"

    goto :goto_24

    .line 80
    :pswitch_2e
    const-string v0, "vnd.android.cursor.dir/cnapmsg"

    goto :goto_24

    .line 82
    :pswitch_31
    const-string v0, "vnd.android.cursor.item/cnapmsg"

    goto :goto_24

    .line 69
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/pantech/providers/skysettings/CallMsgProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "table":Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/providers/skysettings/CallMsgProvider;->m_DataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, ""

    invoke-virtual {v4, v1, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 110
    .local v2, "rowID":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_23

    .line 111
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 112
    .local v0, "_uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/pantech/providers/skysettings/CallMsgProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 113
    return-object v0

    .line 115
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
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 58
    invoke-virtual {p0}, Lcom/pantech/providers/skysettings/CallMsgProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/pantech/providers/skysettings/CallMsgProvider$CallMsgDatabaseHelper;

    const-string v3, "callmsg.db"

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/pantech/providers/skysettings/CallMsgProvider$CallMsgDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 63
    .local v1, "dbHelper":Lcom/pantech/providers/skysettings/CallMsgProvider$CallMsgDatabaseHelper;
    invoke-virtual {v1}, Lcom/pantech/providers/skysettings/CallMsgProvider$CallMsgDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/providers/skysettings/CallMsgProvider;->m_DataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 64
    iget-object v3, p0, Lcom/pantech/providers/skysettings/CallMsgProvider;->m_DataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_18

    const/4 v2, 0x0

    :cond_18
    return v2
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

    .line 143
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 144
    .local v0, "sqlBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {p0, p1}, Lcom/pantech/providers/skysettings/CallMsgProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/pantech/providers/skysettings/CallMsgProvider;->m_DataBase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 146
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_25

    invoke-virtual {p0}, Lcom/pantech/providers/skysettings/CallMsgProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 147
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
    .line 133
    invoke-direct {p0, p1}, Lcom/pantech/providers/skysettings/CallMsgProvider;->getTableName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "table":Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/providers/skysettings/CallMsgProvider;->m_DataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 135
    .local v0, "count":I
    if-lez v0, :cond_18

    .line 136
    invoke-virtual {p0}, Lcom/pantech/providers/skysettings/CallMsgProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 138
    :cond_18
    return v0
.end method
