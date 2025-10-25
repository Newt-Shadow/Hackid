.class public Lcom/yandex/metrica/impl/ob/za;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/ta<",
            "Lcom/yandex/metrica/impl/ob/Ud;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/metrica/impl/ob/ta;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/ta<",
            "Lcom/yandex/metrica/impl/ob/v3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/ua;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/ua;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/za;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ua;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/ua;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/fm;->c()Lcom/yandex/metrica/impl/ob/fm;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/yandex/metrica/impl/ob/ua;->c(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;)Lcom/yandex/metrica/impl/ob/ta;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/za;->a:Lcom/yandex/metrica/impl/ob/ta;

    .line 4
    invoke-static {}, Lcom/yandex/metrica/impl/ob/fm;->c()Lcom/yandex/metrica/impl/ob/fm;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/yandex/metrica/impl/ob/ua;->b(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Q0;)Lcom/yandex/metrica/impl/ob/ta;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/za;->b:Lcom/yandex/metrica/impl/ob/ta;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/za;->a:Lcom/yandex/metrica/impl/ob/ta;

    .line 2
    .line 3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/F0;->k()Lcom/yandex/metrica/impl/ob/I1;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r0;->a()Lcom/yandex/metrica/impl/ob/s0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->l()Lcom/yandex/metrica/impl/ob/ra;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ta;->a(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/ra;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/za;->b:Lcom/yandex/metrica/impl/ob/ta;

    .line 23
    .line 24
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/F0;->d()Lcom/yandex/metrica/impl/ob/I;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/r0;->a()Lcom/yandex/metrica/impl/ob/s0;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->l()Lcom/yandex/metrica/impl/ob/ra;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/ta;->a(Ljava/lang/Object;Lcom/yandex/metrica/impl/ob/ra;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
