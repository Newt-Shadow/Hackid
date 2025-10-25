.class public Lcom/yandex/metrica/impl/ob/B7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/B7$a;
    }
.end annotation


# static fields
.field private static final c:Lcom/yandex/metrica/impl/ob/B7;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/b7;

.field private b:Lcom/yandex/metrica/impl/ob/B7$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/B7;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/b7;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/b7;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/B7;-><init>(Lcom/yandex/metrica/impl/ob/b7;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/yandex/metrica/impl/ob/B7;->c:Lcom/yandex/metrica/impl/ob/B7;

    .line 12
    .line 13
    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/b7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/yandex/metrica/impl/ob/B7$a;->a:Lcom/yandex/metrica/impl/ob/B7$a;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/B7;->b:Lcom/yandex/metrica/impl/ob/B7$a;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/B7;->a:Lcom/yandex/metrica/impl/ob/b7;

    .line 9
    .line 10
    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/B7;
    .locals 1

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/B7;->c:Lcom/yandex/metrica/impl/ob/B7;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public declared-synchronized b()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B7;->b:Lcom/yandex/metrica/impl/ob/B7$a;

    .line 3
    .line 4
    sget-object v1, Lcom/yandex/metrica/impl/ob/B7$a;->c:Lcom/yandex/metrica/impl/ob/B7$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_1
    sget-object v3, Lcom/yandex/metrica/impl/ob/B7$a;->b:Lcom/yandex/metrica/impl/ob/B7$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-ne v0, v3, :cond_1

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return v4

    .line 18
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/B7;->a:Lcom/yandex/metrica/impl/ob/b7;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    .line 20
    :try_start_3
    const-string v3, "appmetrica-service-native"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    .line 22
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/B7;->b:Lcom/yandex/metrica/impl/ob/B7$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return v2

    .line 32
    :catchall_0
    :try_start_5
    sget-object v0, Lcom/yandex/metrica/impl/ob/B7$a;->b:Lcom/yandex/metrica/impl/ob/B7$a;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/B7;->b:Lcom/yandex/metrica/impl/ob/B7$a;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return v4

    .line 38
    :catchall_1
    move-exception v0

    .line 39
    monitor-exit p0

    .line 40
    throw v0
.end method
