.class Lcom/yandex/metrica/impl/ob/ec$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/gc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/ec;->b()Lcom/yandex/metrica/impl/ob/gc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/ec;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ec$a;->a:Lcom/yandex/metrica/impl/ob/ec;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ec$a;->a:Lcom/yandex/metrica/impl/ob/ec;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ec;->a(Lcom/yandex/metrica/impl/ob/ec;)Lcom/yandex/metrica/impl/ob/e9;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/e9;->g(J)Lcom/yandex/metrica/impl/ob/e9;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public getLastAttemptTimeSeconds()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ec$a;->a:Lcom/yandex/metrica/impl/ob/ec;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/ec;->a(Lcom/yandex/metrica/impl/ob/ec;)Lcom/yandex/metrica/impl/ob/e9;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/e9;->b(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method
