.class public Lcom/yandex/metrica/Revenue$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/Revenue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final h:Lcom/yandex/metrica/impl/ob/Kn;


# instance fields
.field a:Ljava/lang/Double;

.field b:Ljava/lang/Long;

.field c:Ljava/util/Currency;

.field d:Ljava/lang/Integer;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Lcom/yandex/metrica/Revenue$Receipt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/Hn;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/Gn;

    .line 4
    .line 5
    const-string v2, "revenue currency"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/yandex/metrica/impl/ob/Gn;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/Hn;-><init>(Lcom/yandex/metrica/impl/ob/Kn;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/yandex/metrica/Revenue$Builder;->h:Lcom/yandex/metrica/impl/ob/Kn;

    .line 14
    .line 15
    return-void
.end method

.method constructor <init>(DLjava/util/Currency;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/yandex/metrica/Revenue$Builder;->h:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p3}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/Revenue$Builder;->a:Ljava/lang/Double;

    .line 4
    iput-object p3, p0, Lcom/yandex/metrica/Revenue$Builder;->c:Ljava/util/Currency;

    return-void
.end method

.method constructor <init>(JLjava/util/Currency;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lcom/yandex/metrica/Revenue$Builder;->h:Lcom/yandex/metrica/impl/ob/Kn;

    check-cast v0, Lcom/yandex/metrica/impl/ob/Hn;

    invoke-virtual {v0, p3}, Lcom/yandex/metrica/impl/ob/Hn;->a(Ljava/lang/Object;)Lcom/yandex/metrica/impl/ob/In;

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/Revenue$Builder;->b:Ljava/lang/Long;

    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/Revenue$Builder;->c:Ljava/util/Currency;

    return-void
.end method


# virtual methods
.method public build()Lcom/yandex/metrica/Revenue;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/Revenue;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/yandex/metrica/Revenue;-><init>(Lcom/yandex/metrica/Revenue$Builder;Lcom/yandex/metrica/Revenue$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public withPayload(Ljava/lang/String;)Lcom/yandex/metrica/Revenue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/Revenue$Builder;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public withProductID(Ljava/lang/String;)Lcom/yandex/metrica/Revenue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/Revenue$Builder;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public withQuantity(Ljava/lang/Integer;)Lcom/yandex/metrica/Revenue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/Revenue$Builder;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public withReceipt(Lcom/yandex/metrica/Revenue$Receipt;)Lcom/yandex/metrica/Revenue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/Revenue$Builder;->g:Lcom/yandex/metrica/Revenue$Receipt;

    .line 2
    .line 3
    return-object p0
.end method
