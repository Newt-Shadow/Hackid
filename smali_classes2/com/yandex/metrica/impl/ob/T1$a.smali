.class Lcom/yandex/metrica/impl/ob/T1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/U1$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/T1;->a(Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/Q1;Ljava/util/Map;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/Q1;

.field final synthetic c:Lcom/yandex/metrica/impl/ob/T1;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/T1;Ljava/util/Map;Lcom/yandex/metrica/impl/ob/Q1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/T1$a;->c:Lcom/yandex/metrica/impl/ob/T1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/T1$a;->a:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/T1$a;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/c0;)Lcom/yandex/metrica/impl/ob/c0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T1$a;->c:Lcom/yandex/metrica/impl/ob/T1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T1$a;->a:Ljava/util/Map;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Tl;->g(Ljava/util/Map;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1, v1}, Lcom/yandex/metrica/impl/ob/c0;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/T1$a;->b:Lcom/yandex/metrica/impl/ob/Q1;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget v0, p1, Lcom/yandex/metrica/impl/ob/c0;->e:I

    .line 19
    .line 20
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/z0;->f(I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, v1, Lcom/yandex/metrica/impl/ob/Q1;->c:Lcom/yandex/metrica/impl/ob/x0;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/x0;->a()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/c0;->c(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/c0;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object p1
.end method
