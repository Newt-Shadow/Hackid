.class Lcom/yandex/metrica/impl/ob/v7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/nm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/v7;->a(Lcom/yandex/metrica/impl/ob/r7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/nm<",
        "Ljava/lang/String;",
        "Lcom/yandex/metrica/impl/ob/c0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/r7;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/v7;Lcom/yandex/metrica/impl/ob/r7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/v7$a;->a:Lcom/yandex/metrica/impl/ob/r7;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/v7$a;->a:Lcom/yandex/metrica/impl/ob/r7;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/r7;->b:Lcom/yandex/metrica/impl/ob/i4;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/i4;->a()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Ul;->b(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/cm;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/z0;->a(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/cm;)Lcom/yandex/metrica/impl/ob/c0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/v7$a;->a:Lcom/yandex/metrica/impl/ob/r7;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/r7;->c:Lcom/yandex/metrica/impl/ob/G7;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/G7;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/c0;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method
