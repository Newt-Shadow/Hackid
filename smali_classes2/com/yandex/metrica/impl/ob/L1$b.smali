.class public Lcom/yandex/metrica/impl/ob/L1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/mm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/L1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/mm<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/i4;

.field private final b:Lcom/yandex/metrica/impl/ob/nm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/nm<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/c0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/yandex/metrica/impl/ob/L1;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L1;Lcom/yandex/metrica/impl/ob/i4;Lcom/yandex/metrica/impl/ob/nm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/impl/ob/i4;",
            "Lcom/yandex/metrica/impl/ob/nm<",
            "Ljava/lang/String;",
            "Lcom/yandex/metrica/impl/ob/c0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/L1$b;->c:Lcom/yandex/metrica/impl/ob/L1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/L1$b;->a:Lcom/yandex/metrica/impl/ob/i4;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/L1$b;->b:Lcom/yandex/metrica/impl/ob/nm;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 13

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/L1$b;->c:Lcom/yandex/metrica/impl/ob/L1;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/L1$b;->a:Lcom/yandex/metrica/impl/ob/i4;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/L1$b;->b:Lcom/yandex/metrica/impl/ob/nm;

    .line 8
    .line 9
    invoke-interface {v2, p1}, Lcom/yandex/metrica/impl/ob/nm;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/yandex/metrica/impl/ob/c0;

    .line 14
    .line 15
    new-instance v2, Lcom/yandex/metrica/impl/ob/D3;

    .line 16
    .line 17
    new-instance v12, Lcom/yandex/metrica/impl/ob/Mg$b;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v10, 0x0

    .line 26
    const/4 v11, 0x0

    .line 27
    move-object v3, v12

    .line 28
    invoke-direct/range {v3 .. v11}, Lcom/yandex/metrica/impl/ob/Mg$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/util/List;)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lcom/yandex/metrica/impl/ob/D3$a;

    .line 32
    .line 33
    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/D3$a;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, v12, v3, v4}, Lcom/yandex/metrica/impl/ob/D3;-><init>(Lcom/yandex/metrica/impl/ob/Mg$b;Lcom/yandex/metrica/impl/ob/D3$a;Landroid/os/ResultReceiver;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, p1, v2}, Lcom/yandex/metrica/impl/ob/L1;->a(Lcom/yandex/metrica/impl/ob/i4;Lcom/yandex/metrica/impl/ob/c0;Lcom/yandex/metrica/impl/ob/D3;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
