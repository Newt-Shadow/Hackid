.class Lcom/yandex/metrica/impl/ob/j1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/j1$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/w6;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/j1$a;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/j1$a;Lcom/yandex/metrica/impl/ob/w6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/j1$a$a;->b:Lcom/yandex/metrica/impl/ob/j1$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/j1$a$a;->a:Lcom/yandex/metrica/impl/ob/w6;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/j1$a$a;->b:Lcom/yandex/metrica/impl/ob/j1$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/j1$a;->e:Lcom/yandex/metrica/impl/ob/j1;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/j1$a$a;->a:Lcom/yandex/metrica/impl/ob/w6;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/B;->a(Lcom/yandex/metrica/impl/ob/w6;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/j1$a$a;->b:Lcom/yandex/metrica/impl/ob/j1$a;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/j1$a;->b:Lcom/yandex/metrica/impl/ob/e1;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/j1$a$a;->a:Lcom/yandex/metrica/impl/ob/w6;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/w6;->a:Lcom/yandex/metrica/impl/ob/E6;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/E6;->f:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/e1;->a(Ljava/util/List;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/j1$a$a;->b:Lcom/yandex/metrica/impl/ob/j1$a;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/j1$a;->c:Lcom/yandex/metrica/impl/ob/y2;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/y2;->a()Lcom/yandex/metrica/impl/ob/R0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/j1$a$a;->a:Lcom/yandex/metrica/impl/ob/w6;

    .line 35
    .line 36
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/R0;->a(Lcom/yandex/metrica/impl/ob/w6;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/j1$a$a;->b:Lcom/yandex/metrica/impl/ob/j1$a;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/j1$a;->b:Lcom/yandex/metrica/impl/ob/e1;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/j1$a$a;->a:Lcom/yandex/metrica/impl/ob/w6;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/w6;->a:Lcom/yandex/metrica/impl/ob/E6;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/E6;->f:Ljava/util/List;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/e1;->b(Ljava/util/List;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/j1$a$a;->b:Lcom/yandex/metrica/impl/ob/j1$a;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/j1$a;->d:Lcom/yandex/metrica/impl/ob/y2;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/y2;->a()Lcom/yandex/metrica/impl/ob/R0;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/j1$a$a;->a:Lcom/yandex/metrica/impl/ob/w6;

    .line 64
    .line 65
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/R0;->a(Lcom/yandex/metrica/impl/ob/w6;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method
