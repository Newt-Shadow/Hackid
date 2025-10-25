.class public final Lio/appmetrica/analytics/impl/w5;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# static fields
.field public static final a:Lio/appmetrica/analytics/impl/w5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/w5;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/w5;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/impl/w5;->a:Lio/appmetrica/analytics/impl/w5;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessor;

    .line 2
    .line 3
    invoke-interface {p1}, Lio/appmetrica/analytics/modulesapi/internal/client/adrevenue/ModuleAdRevenueProcessor;->getDescription()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
