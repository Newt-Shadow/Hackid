.class Lcom/yandex/metrica/impl/ob/T1$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/U1$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/Za;Lcom/yandex/metrica/impl/ob/Q1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Na;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/T1;Lcom/yandex/metrica/impl/ob/Na;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/T1$f;->a:Lcom/yandex/metrica/impl/ob/Na;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1$f;->a:Lcom/yandex/metrica/impl/ob/Na;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Na;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/google/protobuf/nano/ym/MessageNano;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/protobuf/nano/ym/MessageNano;->toByteArray(Lcom/google/protobuf/nano/ym/MessageNano;)[B

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/L0;->a([B)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/c0;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1$f;->a:Lcom/yandex/metrica/impl/ob/Na;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Na;->b:Lcom/yandex/metrica/impl/ob/Vm;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/Vm;->a()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p1, Lcom/yandex/metrica/impl/ob/c0;->h:I

    .line 28
    .line 29
    return-object p1
.end method
