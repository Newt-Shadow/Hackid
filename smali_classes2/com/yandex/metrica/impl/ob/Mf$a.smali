.class public final Lcom/yandex/metrica/impl/ob/Mf$a;
.super Lcom/yandex/metrica/impl/ob/em;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/Mf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ob/Mf;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/Mf;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map;",
            "Ljava/util/Map;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Mf$a;->a:Lcom/yandex/metrica/impl/ob/Mf;

    .line 2
    .line 3
    iput p2, p0, Lcom/yandex/metrica/impl/ob/Mf$a;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Mf$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Mf$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Mf$a;->e:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Mf$a;->f:Ljava/util/Map;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/em;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Mf$a;->a:Lcom/yandex/metrica/impl/ob/Mf;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/Mf;->a(Lcom/yandex/metrica/impl/ob/Mf;)Lcom/yandex/metrica/impl/ob/K0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lcom/yandex/metrica/impl/ob/Mf$a;->b:I

    .line 8
    .line 9
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Mf$a;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Mf$a;->d:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/Mf$a;->e:Ljava/util/Map;

    .line 14
    .line 15
    iget-object v6, p0, Lcom/yandex/metrica/impl/ob/Mf$a;->f:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/I0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
