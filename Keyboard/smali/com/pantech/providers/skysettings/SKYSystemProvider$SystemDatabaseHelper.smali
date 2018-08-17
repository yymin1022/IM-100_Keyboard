.class Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SKYSystemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/providers/skysettings/SKYSystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemDatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table skysystem (_id integer primary key autoincrement, name TEXT, value TEXT);"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 201
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 202
    return-void
.end method

.method private makeSqlStatement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO skysystem (name, value) VALUES ( \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' );"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "initSqlStatement":Ljava/lang/String;
    const-string v1, "SKYSystemProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First Record has just inserted with : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 207
    const-string v1, "create table skysystem (_id integer primary key autoincrement, name TEXT, value TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 208
    const-string v1, "SKYSystemProvider"

    const-string v2, "Database Transtion Start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 213
    :try_start_f
    const-string v1, "SKYSystemProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database Transaction ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v1, "SKYSystemProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database Locked by current thread ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v1, "model"

    const-string v2, "EF51S"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "handset_lock"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "auto_store_mode"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "enable_menu_mode"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v1, "locale_mode"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "airplane_mode"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "auto_time"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "menual_time"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "enable_password"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v1, "password_string"

    const-string v2, "0000"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v1, "pattern_enable"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "pattern_mask"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "voice_record_vol"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v1, "voice_record_play_type"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v1, "voice_record_file_path"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "uri"

    const-string v2, "URI"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v1, "isexist_password"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v1, "show_settings_when_usb_connected"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "usb_allowing_popup"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v1, "speaker_dock_setting"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v1, "xpen_enable"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v1, "xpen_enable_pointer"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v1, "xpen_pointer_type"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v1, "xpen_input_size"

    const-string v2, "2"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "xpen_input_side"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "backtouch_enable"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v1, "double_touch_target_package"

    const-string v2, "lcdoff"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v1, "double_touch_target_class"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_10d} :catch_111
    .catchall {:try_start_f .. :try_end_10d} :catchall_11d

    .line 340
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 342
    :goto_110
    return-void

    .line 337
    :catch_111
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    :try_start_112
    const-string v1, "SKYSystemProvider"

    const-string v2, "Transaction fail...."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catchall {:try_start_112 .. :try_end_119} :catchall_11d

    .line 340
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_110

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_11d
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 354
    const-string v0, "SKYSystemProvider"

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

    .line 357
    const-string v0, "DROP TABLE IF EXISTS skysystem"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0, p1}, Lcom/pantech/providers/skysettings/SKYSystemProvider$SystemDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 359
    return-void
.end method

.method public setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 345
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 346
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v1, "skysystem"

    const-string v2, "skysystem"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 349
    return-void
.end method
