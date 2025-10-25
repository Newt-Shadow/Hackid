.class Lcom/yandex/metrica/impl/ob/Rf$e;
.super Lcom/yandex/metrica/impl/ob/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Rf;->a(Lcom/yandex/metrica/p$Ucc;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/p$Ucc;

.field final synthetic b:Z

.field final synthetic c:Lcom/yandex/metrica/impl/ob/Rf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Rf;Lcom/yandex/metrica/p$Ucc;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Rf$e;->c:Lcom/yandex/metrica/impl/ob/Rf;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Rf$e;->a:Lcom/yandex/metrica/p$Ucc;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/yandex/metrica/impl/ob/Rf$e;->b:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/em;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Rf$e;->c:Lcom/yandex/metrica/impl/ob/Rf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Rf;->b(Lcom/yandex/metrica/impl/ob/Rf;)Lcom/yandex/metrica/impl/ob/K0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/yandex/metrica/impl/ob/Rf$e$a;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/yandex/metrica/impl/ob/Rf$e$a;-><init>(Lcom/yandex/metrica/impl/ob/Rf$e;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/Rf$e;->b:Z

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/K0;->a(Lcom/yandex/metrica/impl/ob/ll;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
