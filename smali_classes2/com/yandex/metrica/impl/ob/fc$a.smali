.class Lcom/yandex/metrica/impl/ob/fc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/gc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/fc;->a()Lcom/yandex/metrica/impl/ob/gc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/fc;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/fc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fc$a;->a:Lcom/yandex/metrica/impl/ob/fc;

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
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fc$a;->a:Lcom/yandex/metrica/impl/ob/fc;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Pb;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/e9;->h(J)Lcom/yandex/metrica/impl/ob/e9;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getLastAttemptTimeSeconds()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fc$a;->a:Lcom/yandex/metrica/impl/ob/fc;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Pb;->a:Lcom/yandex/metrica/impl/ob/e9;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/e9;->c(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method
