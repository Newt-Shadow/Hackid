.class Lcom/yandex/metrica/impl/ob/T1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/U1$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/Sg;Lcom/yandex/metrica/impl/ob/Q1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Sg;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/Sg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/T1$e;->a:Lcom/yandex/metrica/impl/ob/Sg;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1$e;->a:Lcom/yandex/metrica/impl/ob/Sg;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Sg;->a()Lxc/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0}, Lxc/k;->c()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, [B

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/c0;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0}, Lxc/k;->d()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p1, Lcom/yandex/metrica/impl/ob/c0;->h:I

    .line 38
    .line 39
    return-object p1
.end method
