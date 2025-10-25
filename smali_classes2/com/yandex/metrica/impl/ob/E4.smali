.class public Lcom/yandex/metrica/impl/ob/E4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/E4$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:I

.field private c:Ldc/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ldc/c;

    invoke-direct {v0}, Ldc/c;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/E4;-><init>(Ldc/d;)V

    return-void
.end method

.method public constructor <init>(Ldc/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/E4;->c:Ldc/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/E4$a;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/E4;->a:Ljava/lang/Long;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/E4;->c:Ldc/d;

    .line 6
    .line 7
    invoke-interface {v0}, Ldc/d;->currentTimeSeconds()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/E4;->a:Ljava/lang/Long;

    .line 16
    .line 17
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/E4$a;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/E4;->a:Ljava/lang/Long;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/E4;->a:Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v4

    .line 31
    iget v7, p0, Lcom/yandex/metrica/impl/ob/E4;->b:I

    .line 32
    .line 33
    move-object v1, v0

    .line 34
    move v6, v7

    .line 35
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/E4$a;-><init>(JJI)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v7, v7, 0x1

    .line 39
    .line 40
    iput v7, p0, Lcom/yandex/metrica/impl/ob/E4;->b:I

    .line 41
    .line 42
    return-object v0
.end method
