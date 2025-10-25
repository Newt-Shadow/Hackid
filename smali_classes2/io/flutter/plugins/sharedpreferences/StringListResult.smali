.class public final Lio/flutter/plugins/sharedpreferences/StringListResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/sharedpreferences/StringListResult$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/flutter/plugins/sharedpreferences/StringListResult$Companion;


# instance fields
.field private final jsonEncodedValue:Ljava/lang/String;

.field private final type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/flutter/plugins/sharedpreferences/StringListResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/flutter/plugins/sharedpreferences/StringListResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/flutter/plugins/sharedpreferences/StringListResult;->Companion:Lio/flutter/plugins/sharedpreferences/StringListResult$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/StringListResult;-><init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;)V

    return-void
.end method

.method public static synthetic copy$default(Lio/flutter/plugins/sharedpreferences/StringListResult;Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;ILjava/lang/Object;)Lio/flutter/plugins/sharedpreferences/StringListResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugins/sharedpreferences/StringListResult;->copy(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;)Lio/flutter/plugins/sharedpreferences/StringListResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;)Lio/flutter/plugins/sharedpreferences/StringListResult;
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/flutter/plugins/sharedpreferences/StringListResult;

    invoke-direct {v0, p1, p2}, Lio/flutter/plugins/sharedpreferences/StringListResult;-><init>(Ljava/lang/String;Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/flutter/plugins/sharedpreferences/StringListResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/flutter/plugins/sharedpreferences/StringListResult;

    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    iget-object v3, p1, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    iget-object p1, p1, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getJsonEncodedValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lyc/m;->k([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->jsonEncodedValue:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/plugins/sharedpreferences/StringListResult;->type:Lio/flutter/plugins/sharedpreferences/StringListLookupResultType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StringListResult(jsonEncodedValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
