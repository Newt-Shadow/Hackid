.class Lcom/yandex/metrica/impl/ob/ic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/yandex/metrica/impl/ob/Sb;

.field public final b:Lcom/yandex/metrica/impl/ob/Xj;

.field public final c:Lcom/yandex/metrica/impl/ob/Sc;

.field public final d:Lcom/yandex/metrica/impl/ob/Rb;

.field public final e:Lcom/yandex/metrica/impl/ob/mc;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Sb;Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/H2;Lcom/yandex/metrica/impl/ob/Xj;Lcom/yandex/metrica/impl/ob/Sc;Lcom/yandex/metrica/impl/ob/Rb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ic;->a:Lcom/yandex/metrica/impl/ob/Sb;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ic;->b:Lcom/yandex/metrica/impl/ob/Xj;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/ic;->c:Lcom/yandex/metrica/impl/ob/Sc;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/ic;->d:Lcom/yandex/metrica/impl/ob/Rb;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ic;->e:Lcom/yandex/metrica/impl/ob/mc;

    .line 13
    .line 14
    return-void
.end method

.method static a(Lcom/yandex/metrica/impl/ob/Nc;Lcom/yandex/metrica/impl/ob/Sc;Lcom/yandex/metrica/impl/ob/Rb;Lcom/yandex/metrica/impl/ob/H2;Lcom/yandex/metrica/impl/ob/Xj;)Lcom/yandex/metrica/impl/ob/ic;
    .locals 8

    .line 1
    new-instance v7, Lcom/yandex/metrica/impl/ob/ic;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Nc;->a:Lcom/yandex/metrica/impl/ob/Sb;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Nc;->c:Lcom/yandex/metrica/impl/ob/mc;

    .line 6
    .line 7
    move-object v0, v7

    .line 8
    move-object v3, p3

    .line 9
    move-object v4, p4

    .line 10
    move-object v5, p1

    .line 11
    move-object v6, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/yandex/metrica/impl/ob/ic;-><init>(Lcom/yandex/metrica/impl/ob/Sb;Lcom/yandex/metrica/impl/ob/mc;Lcom/yandex/metrica/impl/ob/H2;Lcom/yandex/metrica/impl/ob/Xj;Lcom/yandex/metrica/impl/ob/Sc;Lcom/yandex/metrica/impl/ob/Rb;)V

    .line 13
    .line 14
    .line 15
    return-object v7
.end method
