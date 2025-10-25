.class public Lcom/yandex/metrica/impl/ob/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/Object;

.field private static volatile g:Lcom/yandex/metrica/impl/ob/U;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/U;->f:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/U;->a:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/U;->b:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/U;->c:Ljava/lang/String;

    .line 15
    .line 16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    iput v0, p0, Lcom/yandex/metrica/impl/ob/U;->d:I

    .line 19
    .line 20
    invoke-static {}, Lcom/yandex/metrica/impl/ob/X1;->a()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/U;->e:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v0, Lcom/yandex/metrica/impl/ob/U$a;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/yandex/metrica/impl/ob/U$a;-><init>(Lcom/yandex/metrica/impl/ob/U;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/U;
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/U;->g:Lcom/yandex/metrica/impl/ob/U;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/yandex/metrica/impl/ob/U;->f:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/U;->g:Lcom/yandex/metrica/impl/ob/U;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/yandex/metrica/impl/ob/U;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/U;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/yandex/metrica/impl/ob/U;->g:Lcom/yandex/metrica/impl/ob/U;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/U;->g:Lcom/yandex/metrica/impl/ob/U;

    .line 25
    .line 26
    return-object v0
.end method
