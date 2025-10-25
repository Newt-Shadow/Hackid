.class public Lcom/yandex/metrica/impl/ob/l7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/f7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/f7<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/U3;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/U3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/l7;->a:Lcom/yandex/metrica/impl/ob/U3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/l7;->a:Lcom/yandex/metrica/impl/ob/U3;

    .line 4
    .line 5
    invoke-static {}, Lcom/yandex/metrica/impl/ob/cm;->a()Lcom/yandex/metrica/impl/ob/cm;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/z0;->b(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)Lcom/yandex/metrica/impl/ob/c0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/L3;->a(Lcom/yandex/metrica/impl/ob/c0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/l7;->a:Lcom/yandex/metrica/impl/ob/U3;

    .line 4
    .line 5
    invoke-static {}, Lcom/yandex/metrica/impl/ob/cm;->a()Lcom/yandex/metrica/impl/ob/cm;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/z0;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)Lcom/yandex/metrica/impl/ob/c0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/L3;->a(Lcom/yandex/metrica/impl/ob/c0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
