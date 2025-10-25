.class public final Lu8/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lu8/j;

.field private final b:Lu8/p0;

.field private final c:Lu8/b;


# direct methods
.method public constructor <init>(Lu8/j;Lu8/p0;Lu8/b;)V
    .locals 1

    .line 1
    const-string v0, "eventType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sessionData"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "applicationInfo"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lu8/i0;->a:Lu8/j;

    .line 20
    .line 21
    iput-object p2, p0, Lu8/i0;->b:Lu8/p0;

    .line 22
    .line 23
    iput-object p3, p0, Lu8/i0;->c:Lu8/b;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final a()Lu8/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/i0;->c:Lu8/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lu8/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/i0;->a:Lu8/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Lu8/p0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu8/i0;->b:Lu8/p0;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu8/i0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lu8/i0;

    iget-object v1, p0, Lu8/i0;->a:Lu8/j;

    iget-object v3, p1, Lu8/i0;->a:Lu8/j;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lu8/i0;->b:Lu8/p0;

    iget-object v3, p1, Lu8/i0;->b:Lu8/p0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lu8/i0;->c:Lu8/b;

    iget-object p1, p1, Lu8/i0;->c:Lu8/b;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lu8/i0;->a:Lu8/j;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lu8/i0;->b:Lu8/p0;

    invoke-virtual {v1}, Lu8/p0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lu8/i0;->c:Lu8/b;

    invoke-virtual {v1}, Lu8/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionEvent(eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu8/i0;->a:Lu8/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu8/i0;->b:Lu8/p0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", applicationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu8/i0;->c:Lu8/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
