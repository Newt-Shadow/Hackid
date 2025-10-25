.class public Lcom/yandex/metrica/impl/ob/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/If$x;

.field public static final b:Lcom/yandex/metrica/impl/ob/If$g;

.field public static final c:Lcom/yandex/metrica/impl/ob/If$r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$x;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$x;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/m0;->a:Lcom/yandex/metrica/impl/ob/If$x;

    .line 7
    .line 8
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$g;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$g;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/yandex/metrica/impl/ob/m0;->b:Lcom/yandex/metrica/impl/ob/If$g;

    .line 14
    .line 15
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$r;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$r;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/yandex/metrica/impl/ob/m0;->c:Lcom/yandex/metrica/impl/ob/If$r;

    .line 21
    .line 22
    return-void
.end method

.method public static a()Lcom/yandex/metrica/impl/ob/If$v;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$v;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$v;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/yandex/metrica/impl/ob/m0;->a:Lcom/yandex/metrica/impl/ob/If$x;

    .line 7
    .line 8
    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/If$x;->a:Z

    .line 9
    .line 10
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->n:Z

    .line 11
    .line 12
    return-object v0
.end method

.method public static b()Lcom/yandex/metrica/impl/ob/If$v;
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$v;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$v;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/yandex/metrica/impl/ob/m0;->a:Lcom/yandex/metrica/impl/ob/If$x;

    .line 7
    .line 8
    iget-boolean v1, v1, Lcom/yandex/metrica/impl/ob/If$x;->b:Z

    .line 9
    .line 10
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$v;->n:Z

    .line 11
    .line 12
    return-object v0
.end method
