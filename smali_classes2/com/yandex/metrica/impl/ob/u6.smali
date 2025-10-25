.class public Lcom/yandex/metrica/impl/ob/u6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Lcom/yandex/metrica/impl/ob/mm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/mm<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/yandex/metrica/impl/ob/um;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/yandex/metrica/impl/ob/mm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Lcom/yandex/metrica/impl/ob/mm<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/um;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/um;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/yandex/metrica/impl/ob/u6;-><init>(Ljava/io/File;Lcom/yandex/metrica/impl/ob/mm;Lcom/yandex/metrica/impl/ob/um;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/yandex/metrica/impl/ob/mm;Lcom/yandex/metrica/impl/ob/um;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/yandex/metrica/impl/ob/mm<",
            "Ljava/io/File;",
            ">;",
            "Lcom/yandex/metrica/impl/ob/um;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/u6;->a:Ljava/io/File;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/u6;->b:Lcom/yandex/metrica/impl/ob/mm;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/u6;->c:Lcom/yandex/metrica/impl/ob/um;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/u6;->a:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/u6;->a:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/u6;->a:Ljava/io/File;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    array-length v1, v0

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_0
    if-ge v2, v1, :cond_0

    .line 28
    .line 29
    aget-object v3, v0, v2

    .line 30
    .line 31
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/u6;->c:Lcom/yandex/metrica/impl/ob/um;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ob/um;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/sm;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    :try_start_0
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/sm;->a()V

    .line 42
    .line 43
    .line 44
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/u6;->b:Lcom/yandex/metrica/impl/ob/mm;

    .line 45
    .line 46
    invoke-interface {v5, v3}, Lcom/yandex/metrica/impl/ob/mm;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :catchall_0
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/sm;->c()V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method
