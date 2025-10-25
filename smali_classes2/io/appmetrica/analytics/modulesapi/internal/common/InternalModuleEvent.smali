.class public final Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Category;,
        Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;,
        Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Integer;

.field private final e:Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Category;

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->Companion:Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;

    return-void
.end method

.method private constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->getType$modules_api_release()I

    move-result v0

    iput v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->a:I

    .line 4
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->getServiceDataReporterType()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->d:Ljava/lang/Integer;

    .line 7
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->getCategory()Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Category;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->e:Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Category;

    .line 8
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->getEnvironment()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getListFromMap(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->f:Ljava/util/List;

    .line 9
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->getExtras()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getListFromMap(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->g:Ljava/util/List;

    .line 10
    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getListFromMap(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->h:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;-><init>(Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;)V

    return-void
.end method

.method public static final newBuilder(I)Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->Companion:Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Companion;->newBuilder(I)Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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
    iget-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->h:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getMapFromListOrNull(Ljava/util/List;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getCategory()Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Category;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->e:Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Category;

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
    iget-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->f:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getMapFromListOrNull(Ljava/util/List;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
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
    iget-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->g:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getMapFromListOrNull(Ljava/util/List;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getServiceDataReporterType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->d:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ModuleEvent{type="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->a:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", name=\'"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\', value=\'"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\', serviceDataReporterType="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->d:Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", category="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->e:Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent$Category;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", environment="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->f:Ljava/util/List;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", extras="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->g:Ljava/util/List;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", attributes="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lio/appmetrica/analytics/modulesapi/internal/common/InternalModuleEvent;->h:Ljava/util/List;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/16 v1, 0x7d

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method
