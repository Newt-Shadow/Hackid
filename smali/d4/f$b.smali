.class final Ld4/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld4/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:Ld4/t;

.field public final b:Ld4/t$c;

.field public final c:Ld4/f$a;


# direct methods
.method public constructor <init>(Ld4/t;Ld4/t$c;Ld4/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld4/f$b;->a:Ld4/t;

    .line 5
    .line 6
    iput-object p2, p0, Ld4/f$b;->b:Ld4/t$c;

    .line 7
    .line 8
    iput-object p3, p0, Ld4/f$b;->c:Ld4/f$a;

    .line 9
    .line 10
    return-void
.end method
