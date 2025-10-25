.class public Lcom/yandex/metrica/impl/ob/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bi$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Long;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/bi$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/bi$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bi;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/bi;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/bi;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p4}, Lcom/yandex/metrica/impl/ob/A2;->c(Ljava/util/Collection;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/bi;->d:Ljava/util/List;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/bi;->e:Ljava/lang/Long;

    .line 17
    .line 18
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/bi;->f:Ljava/util/List;

    .line 19
    .line 20
    return-void
.end method
