.class public Lio/appmetrica/analytics/Revenue$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/Revenue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final g:Lio/appmetrica/analytics/impl/kn;


# instance fields
.field final a:J

.field final b:Ljava/util/Currency;

.field c:Ljava/lang/Integer;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lio/appmetrica/analytics/Revenue$Receipt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/kn;

    .line 2
    .line 3
    new-instance v1, Lio/appmetrica/analytics/impl/ae;

    .line 4
    .line 5
    const-string v2, "revenue currency"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/ae;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/kn;-><init>(Lio/appmetrica/analytics/impl/Yn;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/appmetrica/analytics/Revenue$Builder;->g:Lio/appmetrica/analytics/impl/kn;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>(JLjava/util/Currency;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lio/appmetrica/analytics/Revenue$Builder;->g:Lio/appmetrica/analytics/impl/kn;

    invoke-virtual {v0, p3}, Lio/appmetrica/analytics/impl/kn;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 4
    iput-wide p1, p0, Lio/appmetrica/analytics/Revenue$Builder;->a:J

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/Revenue$Builder;->b:Ljava/util/Currency;

    return-void
.end method

.method synthetic constructor <init>(JLjava/util/Currency;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/appmetrica/analytics/Revenue$Builder;-><init>(JLjava/util/Currency;)V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/Revenue;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/Revenue;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lio/appmetrica/analytics/Revenue;-><init>(Lio/appmetrica/analytics/Revenue$Builder;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public withPayload(Ljava/lang/String;)Lio/appmetrica/analytics/Revenue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/Revenue$Builder;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public withProductID(Ljava/lang/String;)Lio/appmetrica/analytics/Revenue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/Revenue$Builder;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public withQuantity(Ljava/lang/Integer;)Lio/appmetrica/analytics/Revenue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/Revenue$Builder;->c:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public withReceipt(Lio/appmetrica/analytics/Revenue$Receipt;)Lio/appmetrica/analytics/Revenue$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/Revenue$Builder;->f:Lio/appmetrica/analytics/Revenue$Receipt;

    .line 2
    .line 3
    return-object p0
.end method
