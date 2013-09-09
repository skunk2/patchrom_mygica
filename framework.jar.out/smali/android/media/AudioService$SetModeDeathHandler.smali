.class Landroid/media/AudioService$SetModeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetModeDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mMode:I

.field private mPid:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V
    .registers 5
    .parameter
    .parameter "cb"
    .parameter "pid"

    .prologue
    .line 1271
    iput-object p1, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1269
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mMode:I

    .line 1272
    iput-object p2, p0, Landroid/media/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    .line 1273
    iput p3, p0, Landroid/media/AudioService$SetModeDeathHandler;->mPid:I

    .line 1274
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 8

    .prologue
    .line 1277
    const/4 v1, 0x0

    .line 1278
    .local v1, newModeOwnerPid:I
    iget-object v2, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$1200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 1279
    :try_start_8
    const-string v2, "AudioService"

    const-string/jumbo v4, "setMode() client died"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object v2, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$1200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1281
    .local v0, index:I
    if-gez v0, :cond_2d

    .line 1282
    const-string v2, "AudioService"

    const-string/jumbo v4, "unregistered setMode() client died"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :goto_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_39

    .line 1289
    if-eqz v1, :cond_2c

    .line 1290
    iget-object v2, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    invoke-static {v2, v1}, Landroid/media/AudioService;->access$1300(Landroid/media/AudioService;I)V

    .line 1292
    :cond_2c
    return-void

    .line 1284
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Landroid/media/AudioService$SetModeDeathHandler;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    iget v6, p0, Landroid/media/AudioService$SetModeDeathHandler;->mPid:I

    invoke-virtual {v2, v4, v5, v6}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v1

    goto :goto_24

    .line 1286
    .end local v0           #index:I
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 1307
    iget-object v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 1303
    iget v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mMode:I

    return v0
.end method

.method public getPid()I
    .registers 2

    .prologue
    .line 1295
    iget v0, p0, Landroid/media/AudioService$SetModeDeathHandler;->mPid:I

    return v0
.end method

.method public setMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 1299
    iput p1, p0, Landroid/media/AudioService$SetModeDeathHandler;->mMode:I

    .line 1300
    return-void
.end method
