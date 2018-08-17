.class public Lcom/pantech/providers/skysettings/SKYNationalCodeProvider;
.super Landroid/content/ContentProvider;
.source "SKYNationalCodeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/providers/skysettings/SKYNationalCodeProvider$NationalCodeDatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "skynationalcode.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final ITEMS:I = 0x1

.field private static final ITEM_ID:I = 0x2

.field private static final NATIONALCODE_TABLE:Ljava/lang/String; = "skynationalcode"

.field private static final TAG:Ljava/lang/String; = "NationalCoderProvider"

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private m_DataBase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 33
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/pantech/providers/skysettings/SKYNationalCodeProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 34
    sget-object v0, Lcom/pantech/providers/skysettings/SKYNationalCodeProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "skynationalcode"

    const-string v2, "skynationalcode"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    sget-object v0, Lcom/pantech/providers/skysettings/SKYNationalCodeProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "skynationalcode"

    const-string v2, "skynationalcode/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 114
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 54
    sget-object v0, Lcom/pantech/providers/skysettings/SKYNationalCodeProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 61
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

    .line 57
    :pswitch_22
    const-string v0, "vnd.android.cursor.dir/skynationalcode"

    .line 59
    :goto_24
    return-object v0

    :pswitch_25
    const-string v0, "vnd.android.cursor.item/skynationalcode"

    goto :goto_24

    .line 54
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-virtual {p0}, Lcom/pantech/providers/skysettings/SKYNationalCodeProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/pantech/providers/skysettings/SKYNationalCodeProvider$NationalCodeDatabaseHelper;

    const-string v3, "skynationalcode.db"

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/pantech/providers/skysettings/SKYNationalCodeProvider$NationalCodeDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 48
    .local v1, "dbHelper":Lcom/pantech/providers/skysettings/SKYNationalCodeProvider$NationalCodeDatabaseHelper;
    invoke-virtual {v1}, Lcom/pantech/providers/skysettings/SKYNationalCodeProvider$NationalCodeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/providers/skysettings/SKYNationalCodeProvider;->m_DataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    iget-object v3, p0, Lcom/pantech/providers/skysettings/SKYNationalCodeProvider;->m_DataBase:Landroid/database/sqlite/SQLiteDatabase;

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

    .line 68
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 69
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "skynationalcode"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 72
    sget-object v1, Lcom/pantech/providers/skysettings/SKYNationalCodeProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_50

    .line 82
    :goto_14
    iget-object v1, p0, Lcom/pantech/providers/skysettings/SKYNationalCodeProvider;->m_DataBase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 89
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_2c

    invoke-virtual {p0}, Lcom/pantech/providers/skysettings/SKYNationalCodeProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 92
    :cond_2c
    return-object v8

    .line 75
    .end local v8    # "c":Landroid/database/Cursor;
    :pswitch_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 72
    nop

    :pswitch_data_50
    .packed-switch 0x2
        :pswitch_2d
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method
