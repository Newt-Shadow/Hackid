.class public Lcom/yandex/metrica/AppMetricaJsInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Uf;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Uf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/AppMetricaJsInterface;->a:Lcom/yandex/metrica/impl/ob/Uf;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/AppMetricaJsInterface;->a:Lcom/yandex/metrica/impl/ob/Uf;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/yandex/metrica/impl/ob/Uf;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
