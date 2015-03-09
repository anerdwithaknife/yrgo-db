<?php

require_once 'fakemail.php';

/**
 *  Base mail class, the foundation of all e-mails
 *  Could be made abstract 
 */
abstract class AbstractMail {
    protected $to;
    protected $from;
    protected $subject;
    protected $body;

    protected $template = 'templates/mail.txt';

    function __construct($to, $from, $subject, $body) {
        $this->to = $to;
        $this->from = $from;
        $this->subject = $subject;
        $this->body = $body;
    }

    function send() {
        // Enkelt template-exempel
        $content = file_get_contents($this->template);
        $content = str_replace('%BODY%', $this->body, $content);

        $headers = "From: {$this->from}\r\n" . "Reply-To: {$this->from}";
        _mail($this->to, $this->subject, $content, $headers);
    }
}

/**
 *  Newsletter class
 */
class SimpleMail extends AbstractMail {
    protected $template = 'templates/simple.txt';
}

/**
 *  Newsletter class
 */
class Newsletter extends AbstractMail {
    private $weekNumber;
    protected $template = 'templates/news.txt';

    function __construct($to, $subject, $body) {
        parent::__construct($to, 'newsletter@domain.com', $subject, $body);

        $this->weekNumber = date('W');
    }

    function setTemplate($templatePath) {
        $this->template = $templatePath;
    }

    function send() {
        $this->subject = "Week {$this->weekNumber}: " . $this->subject;
        parent::send();
    }
}

// Usage example:

$email = 'julien@23c.se';

$m1 = new SimpleMail($email, 'info@domain.com', 'Thank you', 'Thank you for something good.');
$m1->send();

$m2 = new Newsletter($email, 'New merchandise in stock!', 'We are happy to announce that we have new products.');
$m2->send();













