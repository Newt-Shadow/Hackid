.class public final Lcom/yandex/metrica/impl/ob/G6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/yandex/metrica/impl/ob/G6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/G6;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/G6;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/G6;->a:Lcom/yandex/metrica/impl/ob/G6;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Ljava/lang/Throwable;)Lcom/yandex/metrica/impl/ob/F6;
    .locals 3

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/G6;->a:Lcom/yandex/metrica/impl/ob/G6;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/yandex/metrica/impl/ob/G6;->a(Ljava/lang/Throwable;II)Lcom/yandex/metrica/impl/ob/F6;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/Throwable;II)Lcom/yandex/metrica/impl/ob/F6;
    .locals 10

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-array v1, v0, [Ljava/lang/StackTraceElement;

    :goto_0
    const-string v4, "Utils.getStackTraceSafely(throwable)"

    .line 5
    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    array-length v5, v1

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v1, v6

    .line 8
    new-instance v8, Lcom/yandex/metrica/impl/ob/D6;

    .line 9
    invoke-direct {v8, v7}, Lcom/yandex/metrica/impl/ob/D6;-><init>(Ljava/lang/StackTraceElement;)V

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    if-ge p3, p2, :cond_1

    move v7, v6

    goto :goto_2

    :cond_1
    move v7, v0

    :goto_2
    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    move-object v1, v5

    :goto_3
    if-eqz v1, :cond_3

    sget-object v7, Lcom/yandex/metrica/impl/ob/G6;->a:Lcom/yandex/metrica/impl/ob/G6;

    add-int/lit8 v8, p3, 0x1

    const/16 v9, 0x1e

    invoke-direct {v7, v1, v9, v8}, Lcom/yandex/metrica/impl/ob/G6;->a(Ljava/lang/Throwable;II)Lcom/yandex/metrica/impl/ob/F6;

    move-result-object v1

    move-object v7, v1

    goto :goto_4

    :cond_3
    move-object v7, v5

    :goto_4
    const/16 v1, 0x13

    .line 11
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    if-ge p3, p2, :cond_5

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object p1

    const-string p2, "throwable.suppressed"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance p2, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    array-length v1, p1

    :goto_5
    if-ge v0, v1, :cond_4

    aget-object v5, p1, v0

    .line 15
    sget-object v8, Lcom/yandex/metrica/impl/ob/G6;->a:Lcom/yandex/metrica/impl/ob/G6;

    const-string v9, "it"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v5, v6, p3}, Lcom/yandex/metrica/impl/ob/G6;->a(Ljava/lang/Throwable;II)Lcom/yandex/metrica/impl/ob/F6;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    move-object v6, p2

    goto :goto_6

    :cond_5
    move-object v6, v5

    .line 16
    :goto_6
    new-instance p1, Lcom/yandex/metrica/impl/ob/F6;

    move-object v1, p1

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/F6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/yandex/metrica/impl/ob/F6;Ljava/util/List;)V

    return-object p1
.end method
