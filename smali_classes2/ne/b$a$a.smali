.class final Lne/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lne/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lne/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lne/c0;Lne/a0;)Lne/y;
    .locals 0

    .line 1
    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
