.class public Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private action:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;

.field private trigger:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;


# direct methods
.method public constructor <init>(Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;->trigger:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;->action:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v1, v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;->trigger:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;

    .line 22
    .line 23
    iget-object v2, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;->trigger:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    return v0

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;->action:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;->action:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1

    .line 41
    :cond_3
    :goto_0
    return v0
.end method

.method public getAction()Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;->action:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTrigger()Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;->trigger:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;->trigger:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;->action:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public setAction(Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;->action:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;

    .line 2
    .line 3
    return-void
.end method

.method public setTrigger(Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;->trigger:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ContentBlocker{trigger="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;->trigger:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerTrigger;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", action="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlocker;->action:Lcom/pichillilorenzo/flutter_inappwebview_android/content_blocker/ContentBlockerAction;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x7d

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
