.class public Lcom/yandex/metrica/impl/ob/C6;
.super Lcom/yandex/metrica/impl/ob/y6;
.source "SourceFile"


# instance fields
.field private d:Lcom/yandex/metrica/impl/ob/y2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/y2;Lcom/yandex/metrica/impl/ob/y6$a;Lcom/yandex/metrica/d;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/A0;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/A0;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/yandex/metrica/impl/ob/C6;-><init>(Lcom/yandex/metrica/impl/ob/y2;Lcom/yandex/metrica/impl/ob/y6$a;Lcom/yandex/metrica/d;Lcom/yandex/metrica/impl/ob/A0;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/y2;Lcom/yandex/metrica/impl/ob/y6$a;Lcom/yandex/metrica/d;Lcom/yandex/metrica/impl/ob/A0;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lcom/yandex/metrica/impl/ob/y6;-><init>(Lcom/yandex/metrica/impl/ob/y6$a;Lcom/yandex/metrica/d;Lcom/yandex/metrica/impl/ob/A0;)V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/C6;->d:Lcom/yandex/metrica/impl/ob/y2;

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/H6;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/C6;->d:Lcom/yandex/metrica/impl/ob/y2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/y2;->a()Lcom/yandex/metrica/impl/ob/R0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/yandex/metrica/impl/ob/R0;->a(Lcom/yandex/metrica/impl/ob/H6;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
