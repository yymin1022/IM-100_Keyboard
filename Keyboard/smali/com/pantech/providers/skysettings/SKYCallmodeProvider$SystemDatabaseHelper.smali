.class Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SKYCallmodeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/providers/skysettings/SKYCallmodeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemDatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table skycallmode (_id integer primary key autoincrement, name TEXT, value TEXT);"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 197
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 198
    return-void
.end method

.method private makeSqlStatement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO skycallmode (name, value) VALUES ( \'"

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

    .line 356
    .local v0, "initSqlStatement":Ljava/lang/String;
    const-string v1, "SKYCallmodeProvider"

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

    .line 358
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 203
    const-string v1, "create table skycallmode (_id integer primary key autoincrement, name TEXT, value TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 204
    const-string v1, "SKYCallmodeProvider"

    const-string v2, "Database Transtion Start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 209
    :try_start_f
    const-string v1, "SKYCallmodeProvider"

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

    .line 210
    const-string v1, "SKYCallmodeProvider"

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

    .line 211
    const-string v1, "local_number_mode"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "local_number"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "calling_aot_option"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "auto_earmic_mode"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "auto_answer"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "ring_and_vib_time"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "auto_answer_mode"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "accept_and_reject_mode"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "accept_and_reject_msg"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "socket_data_call_enable_skt"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "outgoing_international"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "outgoing_060_700"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v1, "call_waing_sound"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v1, "cli_restriction"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "voip_mode"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "voip_receive_onoff"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "voip_receive_type"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v1, "voip_receive_number"

    const-string v2, ""

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "voip_send_type"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "call_priority"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "auto_redial_mode"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v1, "call_waitng_volume"

    const-string v2, "3"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "call_mute_mode"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "bluetooth_auto_receive"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "hd_voice_settings"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v1, "kt_hd_voice_onoff"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v1, "bu_hd_voice_settings"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "bu_kt_hd_voice_onoff"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "hd_voice_able_notify"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "hd_voice_user"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "reject_international_call"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "notify_international_call"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "caller_number"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "call_receive_by_hard_key"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v1, "call_receive_by_home_key"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "is_roaming"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "is_vendor_usim"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "block_mode"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "block_repeated_call"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "earmic_timer"

    const-string v2, "5"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v1, "vib_alert_when_connected"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "kt_phrase_settings"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "skt_call_mode"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "internationl_number_mode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v1, "internationl_number"

    const-string v2, "002"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v1, "receive_by_small_call"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "always_keep_during_call"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v1, "fast_download"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "file_size_minimum"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "display_popup_when_download"

    const-string v2, "1"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v1, "fast_download_init"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "call_record_type"

    const-string v2, "0"

    invoke-virtual {p0, p1, v1, v2}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1bc} :catch_1c0
    .catchall {:try_start_f .. :try_end_1bc} :catchall_1cc

    .line 287
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 289
    :goto_1bf
    return-void

    .line 284
    :catch_1c0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1c1
    const-string v1, "SKYCallmodeProvider"

    const-string v2, "Transaction fail...."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c8
    .catchall {:try_start_1c1 .. :try_end_1c8} :catchall_1cc

    .line 287
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1bf

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1cc
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 301
    const-string v3, "SKYCallmodeProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", which will destroy all old data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    move v2, p2

    .line 305
    .local v2, "upgradeVersion":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_52

    .line 306
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 309
    :try_start_2f
    const-string v3, "fast_download"

    const-string v4, "0"

    invoke-virtual {p0, p1, v3, v4}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v3, "file_size_minimum"

    const-string v4, "0"

    invoke-virtual {p0, p1, v3, v4}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v3, "display_popup_when_download"

    const-string v4, "1"

    invoke-virtual {p0, p1, v3, v4}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v3, "fast_download_init"

    const-string v4, "0"

    invoke-virtual {p0, p1, v3, v4}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4e} :catch_8c
    .catchall {:try_start_2f .. :try_end_4e} :catchall_ba

    .line 318
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 320
    :goto_51
    const/4 v2, 0x2

    .line 322
    :cond_52
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7a

    .line 323
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 327
    :try_start_58
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 328
    .local v1, "row":Landroid/content/ContentValues;
    const-string v3, "name"

    const-string v4, "fast_download"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v3, "value"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v3, "skycallmode"

    const-string v4, "name=\'fast_download\'"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 332
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_76} :catch_bf
    .catchall {:try_start_58 .. :try_end_76} :catchall_ed

    .line 337
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 339
    .end local v1    # "row":Landroid/content/ContentValues;
    :goto_79
    const/4 v2, 0x3

    .line 341
    :cond_7a
    if-eq v2, p3, :cond_8b

    .line 342
    const-string v3, "SKYCallmodeProvider"

    const-string v4, "DB DROP and CREATE TABLE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v3, "DROP TABLE IF EXISTS skycallmode"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0, p1}, Lcom/pantech/providers/skysettings/SKYCallmodeProvider$SystemDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 346
    :cond_8b
    return-void

    .line 314
    :catch_8c
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8d
    const-string v3, "SKYCallmodeProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transaction fail, upgradeVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_8d .. :try_end_b6} :catchall_ba

    .line 318
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_51

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_ba
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 333
    :catch_bf
    move-exception v0

    .line 334
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_c0
    const-string v3, "SKYCallmodeProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transaction fail, upgradeVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e9
    .catchall {:try_start_c0 .. :try_end_e9} :catchall_ed

    .line 337
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_79

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_ed
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public setInitalValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 292
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 293
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v1, "skycallmode"

    const-string v2, "skycallmode"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 296
    return-void
.end method
