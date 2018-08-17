.class public Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;
.super Ljava/lang/Object;
.source "PointerTrackerQueue.java"


# instance fields
.field private final mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pantech/inputmethod/keyboard/PointerTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 3
    .param p1, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    .line 27
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 28
    monitor-exit p0

    return-void

    .line 27
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAnyInSlidingKeyInput()Z
    .registers 4

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .line 84
    .local v1, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isInSlidingKeyInput()Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1e

    move-result v2

    if-eqz v2, :cond_7

    .line 85
    const/4 v2, 0x1

    .line 88
    .end local v1    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :goto_1a
    monitor-exit p0

    return v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1a

    .line 83
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public releaseAllPointers(J)V
    .registers 4
    .param p1, "eventTime"    # J

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->releaseAllPointersExcept(Lcom/pantech/inputmethod/keyboard/PointerTracker;J)V

    .line 48
    return-void
.end method

.method public declared-synchronized releaseAllPointersClear(Lcom/pantech/inputmethod/keyboard/PointerTracker;J)V
    .registers 8
    .param p1, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;
    .param p2, "eventTime"    # J

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .line 66
    .local v1, "t":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    if-eq v1, p1, :cond_7

    .line 69
    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v2

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onPhantomUpEventClear(IIJ)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_7

    .line 65
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :catchall_21
    move-exception v2

    monitor-exit p0

    throw v2

    .line 71
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 72
    if-eqz p1, :cond_30

    .line 73
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_21

    .line 75
    :cond_30
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized releaseAllPointersExcept(Lcom/pantech/inputmethod/keyboard/PointerTracker;J)V
    .registers 8
    .param p1, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;
    .param p2, "eventTime"    # J

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .line 52
    .local v1, "t":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    if-eq v1, p1, :cond_7

    .line 55
    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v2

    invoke-virtual {v1}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onPhantomUpEvent(IIJ)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_7

    .line 51
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :catchall_21
    move-exception v2

    monitor-exit p0

    throw v2

    .line 57
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 58
    if-eqz p1, :cond_30

    .line 59
    iget-object v2, p0, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_21

    .line 61
    :cond_30
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized releaseAllPointersOlderThan(Lcom/pantech/inputmethod/keyboard/PointerTracker;J)V
    .registers 10
    .param p1, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;
    .param p2, "eventTime"    # J

    .prologue
    .line 31
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->lastIndexOf(Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_34

    move-result v3

    if-gez v3, :cond_b

    .line 44
    :cond_9
    monitor-exit p0

    return-void

    .line 34
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    .line 35
    .local v1, "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/pantech/inputmethod/keyboard/PointerTracker;>;"
    const/4 v0, 0x0

    .line 36
    .local v0, "oldestPos":I
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .local v2, "t":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :goto_14
    if-eq v2, p1, :cond_9

    .line 37
    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->isModifier()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 36
    :goto_1e
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "t":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    check-cast v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .restart local v2    # "t":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    goto :goto_14

    .line 40
    :cond_25
    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getLastX()I

    move-result v3

    invoke-virtual {v2}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->getLastY()I

    move-result v4

    invoke-virtual {v2, v3, v4, p2, p3}, Lcom/pantech/inputmethod/keyboard/PointerTracker;->onPhantomUpEvent(IIJ)V

    .line 41
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_34

    goto :goto_1e

    .line 31
    .end local v0    # "oldestPos":I
    .end local v1    # "queue":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/pantech/inputmethod/keyboard/PointerTracker;>;"
    .end local v2    # "t":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :catchall_34
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized remove(Lcom/pantech/inputmethod/keyboard/PointerTracker;)V
    .registers 3
    .param p1, "tracker"    # Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/pantech/inputmethod/keyboard/internal/PointerTrackerQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;

    .line 95
    .local v2, "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v7, :cond_25

    .line 96
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_25
    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v2, Lcom/pantech/inputmethod/keyboard/PointerTracker;->mPointerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 99
    .end local v2    # "tracker":Lcom/pantech/inputmethod/keyboard/PointerTracker;
    :cond_3a
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
