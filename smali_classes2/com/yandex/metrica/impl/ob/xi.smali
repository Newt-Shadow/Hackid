.class public Lcom/yandex/metrica/impl/ob/xi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/yi;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/ri;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/ri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/xi;->a:Lcom/yandex/metrica/impl/ob/ri;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/xi;->a:Lcom/yandex/metrica/impl/ob/ri;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ri;->c()Lcom/yandex/metrica/networktasks/api/NetworkTask;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;->a()Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/yandex/metrica/networktasks/api/NetworkServiceLocator;->b()Lcom/yandex/metrica/networktasks/api/NetworkCore;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Lcom/yandex/metrica/networktasks/api/NetworkCore;->c(Lcom/yandex/metrica/networktasks/api/NetworkTask;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
