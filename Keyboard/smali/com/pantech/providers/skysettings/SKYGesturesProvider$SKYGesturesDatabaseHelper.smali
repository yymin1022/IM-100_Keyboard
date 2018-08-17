.class Lcom/pantech/providers/skysettings/SKYGesturesProvider$SKYGesturesDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SKYGesturesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/providers/skysettings/SKYGesturesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SKYGesturesDatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table skygestures (_id integer primary key autoincrement, _default INT, _type INT, _title TEXT, _score INT, _uri TEXT, _categoryuri TEXT);"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 193
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 194
    iput-object p1, p0, Lcom/pantech/providers/skysettings/SKYGesturesProvider$SKYGesturesDatabaseHelper;->mContext:Landroid/content/Context;

    .line 196
    iget-object v1, p0, Lcom/pantech/providers/skysettings/SKYGesturesProvider$SKYGesturesDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "SKYGestures.bin"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 197
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 199
    const-string v1, "SkyGesturesProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SKYGestures.bin Size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_3c

    invoke-direct {p0}, Lcom/pantech/providers/skysettings/SKYGesturesProvider$SKYGesturesDatabaseHelper;->copyDefaultGestures()V

    .line 204
    :cond_3c
    :goto_3c
    return-void

    .line 203
    :cond_3d
    const-string v1, "SkyGesturesProvider"

    const-string v2, "NOT SKYGestures"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method private copyDefaultGestures()V
    .registers 9

    .prologue
    .line 300
    :try_start_0
    const-string v5, "SkyGesturesProvider"

    const-string v6, "copyDefaultGestures"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v5, p0, Lcom/pantech/providers/skysettings/SKYGesturesProvider$SKYGesturesDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "SKYGestures.bin"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 302
    .local v4, "srcFile":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/pantech/providers/skysettings/SKYGesturesProvider$SKYGesturesDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v6, "SKYGestures.bin"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 304
    .local v1, "dstFile":Ljava/io/FileOutputStream;
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 305
    .local v0, "buf":[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 307
    .local v3, "readSize":I
    :goto_24
    if-lez v3, :cond_2f

    .line 309
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 310
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    goto :goto_24

    .line 313
    :cond_2f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 314
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_35} :catch_36

    .line 320
    .end local v0    # "buf":[B
    .end local v1    # "dstFile":Ljava/io/FileOutputStream;
    .end local v3    # "readSize":I
    .end local v4    # "srcFile":Ljava/io/InputStream;
    :goto_35
    return-void

    .line 316
    :catch_36
    move-exception v2

    .line 318
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0xe

    .line 208
    const-string v6, "create table skygestures (_id integer primary key autoincrement, _default INT, _type INT, _title TEXT, _score INT, _uri TEXT, _categoryuri TEXT);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lcom/pantech/providers/skysettings/SKYGesturesProvider$SKYGesturesDatabaseHelper;->copyDefaultGestures()V

    .line 212
    new-array v4, v8, [I

    fill-array-data v4, :array_f4

    .line 228
    .local v4, "types":[I
    new-array v3, v8, [Ljava/lang/String;

    const-string v6, "Release"

    aput-object v6, v3, v9

    const-string v6, "Release"

    aput-object v6, v3, v10

    const-string v6, "Release"

    aput-object v6, v3, v11

    const-string v6, "Release"

    aput-object v6, v3, v12

    const/4 v6, 0x4

    const-string v7, "Release"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    const-string v7, "Release"

    aput-object v7, v3, v6

    const/4 v6, 0x6

    const-string v7, "Release"

    aput-object v7, v3, v6

    const/4 v6, 0x7

    const-string v7, "Release"

    aput-object v7, v3, v6

    const/16 v6, 0x8

    const-string v7, "Call History"

    aput-object v7, v3, v6

    const/16 v6, 0x9

    const-string v7, "Message"

    aput-object v7, v3, v6

    const/16 v6, 0xa

    const-string v7, "Player"

    aput-object v7, v3, v6

    const/16 v6, 0xb

    const-string v7, "Notepad"

    aput-object v7, v3, v6

    const/16 v6, 0xc

    const-string v7, "Calendar"

    aput-object v7, v3, v6

    const/16 v6, 0xd

    const-string v7, "Camera"

    aput-object v7, v3, v6

    .line 243
    .local v3, "titles":[Ljava/lang/String;
    new-array v2, v8, [I

    fill-array-data v2, :array_114

    .line 259
    .local v2, "scores":[I
    new-array v0, v8, [Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v0, v9

    const-string v6, ""

    aput-object v6, v0, v10

    const-string v6, ""

    aput-object v6, v0, v11

    const-string v6, ""

    aput-object v6, v0, v12

    const/4 v6, 0x4

    const-string v7, ""

    aput-object v7, v0, v6

    const/4 v6, 0x5

    const-string v7, ""

    aput-object v7, v0, v6

    const/4 v6, 0x6

    const-string v7, ""

    aput-object v7, v0, v6

    const/4 v6, 0x7

    const-string v7, ""

    aput-object v7, v0, v6

    const/16 v6, 0x8

    const-string v7, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.contacts/.activities.PCUDialtactsActivity;end"

    aput-object v7, v0, v6

    const/16 v6, 0x9

    const-string v7, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x34200000;component=com.pantech.app.mms/.ui.EntryActivity;end"

    aput-object v7, v0, v6

    const/16 v6, 0xa

    const-string v7, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.music/.MusicStarter;end"

    aput-object v7, v0, v6

    const/16 v6, 0xb

    const-string v7, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.notepad/.NotePadLauncher;end"

    aput-object v7, v0, v6

    const/16 v6, 0xc

    const-string v7, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x14200000;component=com.android.calendar/.AllInOneActivity;end"

    aput-object v7, v0, v6

    const/16 v6, 0xd

    const-string v7, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.vegacamera/.Camera;end"

    aput-object v7, v0, v6

    .line 274
    .local v0, "URI":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_ad
    array-length v6, v4

    if-ge v1, v6, :cond_f2

    .line 275
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 277
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "_default"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    const-string v6, "_type"

    aget v7, v4, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string v6, "_title"

    aget-object v7, v3, v1

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v6, "_score"

    aget v7, v2, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    const-string v6, "_uri"

    aget-object v7, v0, v1

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v6, "_categoryuri"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v6, "skygestures"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    .line 286
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_f2
    return-void

    .line 212
    nop

    :array_f4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 243
    :array_114
    .array-data 4
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
    .end array-data
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 290
    const-string v0, "SkyGesturesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v0, "DROP TABLE IF EXISTS skygestures"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0, p1}, Lcom/pantech/providers/skysettings/SKYGesturesProvider$SKYGesturesDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 295
    return-void
.end method
