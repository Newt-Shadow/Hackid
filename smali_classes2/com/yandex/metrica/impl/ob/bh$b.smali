.class public Lcom/yandex/metrica/impl/ob/bh$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ih;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ih;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ih;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/bh$b;-><init>(Lcom/yandex/metrica/impl/ob/ih;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/ih;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bh$b;->a:Lcom/yandex/metrica/impl/ob/ih;

    return-void
.end method


# virtual methods
.method public a([B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/hh;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->a([B)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bh$b;->a:Lcom/yandex/metrica/impl/ob/ih;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/String;

    .line 16
    .line 17
    const-string v3, "UTF-8"

    .line 18
    .line 19
    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/ih;->a(Ljava/lang/String;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :catch_0
    return-object v0
.end method
