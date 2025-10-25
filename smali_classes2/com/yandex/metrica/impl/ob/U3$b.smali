.class public Lcom/yandex/metrica/impl/ob/U3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/sg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/U3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/U3;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/U3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/U3$b;->a:Lcom/yandex/metrica/impl/ob/U3;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/dg;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/yandex/metrica/impl/ob/c0;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/c0;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/dg;->a()[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/c0;->a([B)Lcom/yandex/metrica/impl/ob/c0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object v0, Lcom/yandex/metrica/impl/ob/a1;->z:Lcom/yandex/metrica/impl/ob/a1;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/a1;->b()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/c0;->a(I)Lcom/yandex/metrica/impl/ob/c0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/U3$b;->a:Lcom/yandex/metrica/impl/ob/U3;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/L3;->a(Lcom/yandex/metrica/impl/ob/c0;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
