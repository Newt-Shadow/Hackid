.class public final Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newBuilder(I)Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
