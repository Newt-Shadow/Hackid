.class final Lcom/yandex/metrica/impl/ob/xg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/xg;->a(Ljava/util/List;)Lcom/yandex/metrica/impl/ob/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/yandex/metrica/impl/ob/dg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/xg;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/xg;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/xg$b;->a:Lcom/yandex/metrica/impl/ob/xg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/metrica/impl/ob/dg;Lcom/yandex/metrica/impl/ob/dg;)I
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/yandex/metrica/impl/ob/dg;->c:J

    .line 2
    .line 3
    iget-wide v2, p2, Lcom/yandex/metrica/impl/ob/dg;->c:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    invoke-static {v0, v1}, Lkd/a;->a(J)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/xg$b;->a:Lcom/yandex/metrica/impl/ob/xg;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/xg;->a(Lcom/yandex/metrica/impl/ob/xg;)Lcom/yandex/metrica/impl/ob/Zl;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Zl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/xg$b;->a:Lcom/yandex/metrica/impl/ob/xg;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/xg;->a(Lcom/yandex/metrica/impl/ob/xg;)Lcom/yandex/metrica/impl/ob/Zl;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object p2, p2, Lcom/yandex/metrica/impl/ob/dg;->d:Lcom/yandex/metrica/impl/ob/dg$a;

    .line 37
    .line 38
    invoke-virtual {v0, p2}, Lcom/yandex/metrica/impl/ob/Zl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const-string v0, "sourcePriorities[second.source]"

    .line 43
    .line 44
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    check-cast p2, Ljava/lang/Number;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    sub-int v0, p1, p2

    .line 54
    .line 55
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/dg;

    .line 2
    .line 3
    check-cast p2, Lcom/yandex/metrica/impl/ob/dg;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/xg$b;->a(Lcom/yandex/metrica/impl/ob/dg;Lcom/yandex/metrica/impl/ob/dg;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
