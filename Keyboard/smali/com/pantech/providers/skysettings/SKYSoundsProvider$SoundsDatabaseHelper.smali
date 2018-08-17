.class Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SKYSoundsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/providers/skysettings/SKYSoundsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundsDatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table skysounds (_id integer primary key autoincrement, name TEXT,value TEXT);"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 204
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 209
    const-string v1, "create table skysounds (_id integer primary key autoincrement, name TEXT,value TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 210
    const-string v1, "SKYSoundsProvider"

    const-string v2, "Database Transtion Start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 214
    :try_start_f
    const-string v1, "SKYSoundsProvider"

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

    .line 215
    const-string v1, "SKYSoundsProvider"

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

    .line 217
    const-string v1, "bell_time_duration"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "vibration_pattern"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "vibration_level"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "touch_vibration_level"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "sky_keyboard"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "dial_tone"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v1, "alert_dialog_sound_path"

    const-string v2, "/system/media/audio/messagebox/chime.ogg"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "call_connection_sound_path"

    const-string v2, "/system/media/audio/callconnect/sound1.ogg"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "vtcall_connection_sound_path"

    const-string v2, "/system/media/audio/callconnect_vt/sound1_vt.ogg"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "low_battery_sound_path"

    const-string v2, "/system/media/audio/lowbattery/batt_low_4--witty.ogg"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "low_battery_sound_type"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "ringtone_video_uri"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "ringtone_voip_uri"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "listscrll_effect"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "ringtone_mode"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "ringtone_path"

    const-string v2, "system/media/audio/ringtones/sky_ringtone/SKY_Ringtone.ogg"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "dialing_sound_path"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "no_service_sound_path"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "minute_reminder_sound_path"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "absence_notify_bellkind_path"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "speaker_high_volume_mode"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "speaker_high_volume_mode_backup"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "notification_sound_when_connecting_cable"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_101} :catch_105
    .catchall {:try_start_f .. :try_end_101} :catchall_111

    .line 253
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 255
    :goto_104
    return-void

    .line 249
    :catch_105
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    :try_start_106
    const-string v1, "SKYSoundsProvider"

    const-string v2, "Transaction fail...."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catchall {:try_start_106 .. :try_end_10d} :catchall_111

    .line 253
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_104

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_111
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
    .line 268
    const-string v0, "SKYSoundsProvider"

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

    .line 271
    const-string v0, "DROP TABLE IF EXISTS skysounds"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/pantech/providers/skysettings/SKYSoundsProvider$SoundsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 273
    return-void
.end method

.method public setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 259
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "skysounds"

    const-string v2, "skysounds"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 263
    return-void
.end method
