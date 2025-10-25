.class public Lcom/android/billingclient/api/g$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/g$c$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method synthetic constructor <init>(Lc2/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/g$c;->c:I

    iput p1, p0, Lcom/android/billingclient/api/g$c;->d:I

    return-void
.end method

.method public static a()Lcom/android/billingclient/api/g$c$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/billingclient/api/g$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/g$c$a;-><init>(Lc2/d0;)V

    return-object v0
.end method

.method static bridge synthetic d(Lcom/android/billingclient/api/g$c;)Lcom/android/billingclient/api/g$c$a;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/g$c;->a()Lcom/android/billingclient/api/g$c$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/billingclient/api/g$c;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$c$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/g$c$a;

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcom/android/billingclient/api/g$c;->c:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$c$a;->f(I)Lcom/android/billingclient/api/g$c$a;

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lcom/android/billingclient/api/g$c;->d:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/g$c$a;->g(I)Lcom/android/billingclient/api/g$c$a;

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/billingclient/api/g$c;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/g$c$a;->d(Ljava/lang/String;)Lcom/android/billingclient/api/g$c$a;

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method static bridge synthetic g(Lcom/android/billingclient/api/g$c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g$c;->a:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic h(Lcom/android/billingclient/api/g$c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/g$c;->b:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic i(Lcom/android/billingclient/api/g$c;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/g$c;->c:I

    return-void
.end method

.method static bridge synthetic j(Lcom/android/billingclient/api/g$c;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/g$c;->d:I

    return-void
.end method


# virtual methods
.method final b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/g$c;->c:I

    return v0
.end method

.method final c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/g$c;->d:I

    return v0
.end method

.method final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/g$c;->b:Ljava/lang/String;

    return-object v0
.end method
