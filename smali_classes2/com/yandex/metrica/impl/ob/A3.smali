.class public Lcom/yandex/metrica/impl/ob/A3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/metrica/impl/ob/A3;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/ContentValues;

.field private b:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/yandex/metrica/impl/ob/A3;->c:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Lcom/yandex/metrica/impl/ob/A3$a;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/A3$a;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/yandex/metrica/impl/ob/A3;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    .line 15
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/A3;->b:Landroid/os/ResultReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    .line 3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROCESS_CFG_PROCESS_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    sget-object v1, Lcom/yandex/metrica/impl/ob/A3;->c:Ljava/lang/String;

    const-string v2, "PROCESS_CFG_PROCESS_SESSION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/yandex/metrica/YandexMetrica;->getLibraryApiLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROCESS_CFG_SDK_API_LEVEL"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PROCESS_CFG_PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/A3;->b:Landroid/os/ResultReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/A3;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    monitor-enter p1

    .line 10
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    .line 11
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/A3;->b:Landroid/os/ResultReceiver;

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->b:Landroid/os/ResultReceiver;

    .line 12
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/ob/A3;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "PROCESS_CFG_OBJ"

    .line 1
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/A3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method private a(Lcom/yandex/metrica/j;)V
    .locals 2

    .line 2
    iget-object v0, p1, Lcom/yandex/metrica/j;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/yandex/metrica/j;->c:Ljava/lang/String;

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    const-string v1, "PROCESS_CFG_DISTRIBUTION_REFERRER"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    const-string p1, "api"

    monitor-enter p0

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    const-string v1, "PROCESS_CFG_INSTALL_REFERRER_SOURCE"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    const-string v1, "PROCESS_CFG_CLIDS"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Tl;->d(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    const-string v1, "PROCESS_CFG_DISTRIBUTION_REFERRER"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Tl;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PROCESS_CFG_CUSTOM_HOSTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/Tl;->g(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PROCESS_CFG_CLIDS"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    const-string v1, "PROCESS_CFG_CUSTOM_HOSTS"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Tl;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b(Lcom/yandex/metrica/j;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/yandex/metrica/j;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/yandex/metrica/j;->d:Ljava/util/List;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Tl;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PROCESS_CFG_CUSTOM_HOSTS"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/yandex/metrica/j;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p1, Lcom/yandex/metrica/j;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Tl;->i(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7
    :try_start_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Tl;->g(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PROCESS_CFG_CLIDS"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 8
    :cond_1
    :goto_1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/A3;->a(Lcom/yandex/metrica/j;)V

    .line 9
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    const-string v1, "PROCESS_CFG_INSTALL_REFERRER_SOURCE"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Landroid/os/ResultReceiver;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->b:Landroid/os/ResultReceiver;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "PROCESS_CFG_DISTRIBUTION_REFERRER"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "PROCESS_CFG_INSTALL_REFERRER_SOURCE"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "PROCESS_CFG_PACKAGE_NAME"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public g()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "PROCESS_CFG_PROCESS_ID"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "PROCESS_CFG_PROCESS_SESSION_ID"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public i()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "PROCESS_CFG_SDK_API_LEVEL"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v1, "PROCESS_CFG_CUSTOM_HOSTS"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ProcessConfiguration{mParamsMapping="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", mDataResultReceiver="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/A3;->b:Landroid/os/ResultReceiver;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x7d

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    new-instance p2, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->a:Landroid/content/ContentValues;

    .line 7
    .line 8
    const-string v1, "CFG_KEY_PROCESS_ENVIRONMENT"

    .line 9
    .line 10
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/A3;->b:Landroid/os/ResultReceiver;

    .line 14
    .line 15
    const-string v1, "CFG_KEY_PROCESS_ENVIRONMENT_RECEIVER"

    .line 16
    .line 17
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
