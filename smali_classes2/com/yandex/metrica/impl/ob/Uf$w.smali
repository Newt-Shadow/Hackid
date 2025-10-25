.class Lcom/yandex/metrica/impl/ob/Uf$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Uf;->a(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Uf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Uf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Uf$w;->a:Lcom/yandex/metrica/impl/ob/Uf;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Uf$w;->a:Lcom/yandex/metrica/impl/ob/Uf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Uf;->a(Lcom/yandex/metrica/impl/ob/Uf;)Lcom/yandex/metrica/impl/ob/K0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Uf$w;->a:Lcom/yandex/metrica/impl/ob/Uf;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Lf;->h()Lcom/yandex/metrica/impl/ob/D2;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/K0;->a(Lcom/yandex/metrica/impl/ob/D2;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
