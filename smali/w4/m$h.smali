.class abstract Lw4/m$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw4/m$h$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ld4/s0;

.field public final c:I

.field public final d:Lb3/x1;


# direct methods
.method public constructor <init>(ILd4/s0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lw4/m$h;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lw4/m$h;->b:Ld4/s0;

    .line 7
    .line 8
    iput p3, p0, Lw4/m$h;->c:I

    .line 9
    .line 10
    invoke-virtual {p2, p3}, Ld4/s0;->b(I)Lb3/x1;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lw4/m$h;->d:Lb3/x1;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Lw4/m$h;)Z
.end method
