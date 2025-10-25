.class public final Lcom/yandex/metrica/impl/ob/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/networktasks/api/ConfigProvider;


# instance fields
.field private final a:Lxc/d;

.field private final b:Lcom/yandex/metrica/impl/ob/L3;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/d1;->b:Lcom/yandex/metrica/impl/ob/L3;

    .line 5
    .line 6
    new-instance p1, Lcom/yandex/metrica/impl/ob/d1$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/yandex/metrica/impl/ob/d1$a;-><init>(Lcom/yandex/metrica/impl/ob/d1;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/d1;->a:Lxc/d;

    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic a(Lcom/yandex/metrica/impl/ob/d1;)Lcom/yandex/metrica/impl/ob/L3;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/d1;->b:Lcom/yandex/metrica/impl/ob/L3;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/Lg;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/d1;->a:Lxc/d;

    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/Lg;

    const-string v1, "cachedConfig"

    .line 2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getConfig()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/d1;->a:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/yandex/metrica/impl/ob/Lg;

    .line 8
    .line 9
    const-string v1, "cachedConfig"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
