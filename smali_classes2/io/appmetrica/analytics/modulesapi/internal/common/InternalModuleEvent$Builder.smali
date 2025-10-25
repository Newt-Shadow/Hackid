.class public final Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Integer;

.field private e:Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Category;

.field private f:Ljava/util/Map;

.field private g:Ljava/util/Map;

.field private h:Ljava/util/Map;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;-><init>(Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->h:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCategory()Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Category;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->e:Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Category;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnvironment()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->f:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->g:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getServiceDataReporterType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType$modules_api_release()I
    .locals 1

    .line 1
    iget v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->h:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public final setCategory(Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Category;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->e:Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Category;

    .line 2
    .line 3
    return-void
.end method

.method public final setEnvironment(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->f:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtras(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->g:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setServiceDataReporterType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final withAttributes(Ljava/util/Map;)Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->h:Ljava/util/Map;

    .line 9
    .line 10
    :cond_0
    return-object p0
.end method

.method public final withCategory(Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Category;)Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->e:Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Category;

    .line 2
    .line 3
    return-object p0
.end method

.method public final withEnvironment(Ljava/util/Map;)Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->f:Ljava/util/Map;

    .line 9
    .line 10
    :cond_0
    return-object p0
.end method

.method public final withExtras(Ljava/util/Map;)Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->g:Ljava/util/Map;

    .line 9
    .line 10
    :cond_0
    return-object p0
.end method

.method public final withName(Ljava/lang/String;)Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final withServiceDataReporterType(I)Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->d:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object p0
.end method

.method public final withValue(Ljava/lang/String;)Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
