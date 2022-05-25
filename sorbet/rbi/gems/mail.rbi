# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: ignore
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/mail/all/mail.rbi
#
# mail-2.7.1

module Mail
  def self.all(*args, &block); end
  def self.connection(&block); end
  def self.defaults(&block); end
  def self.delete_all(*args, &block); end
  def self.deliver(*args, &block); end
  def self.delivery_method; end
  def self.eager_autoload!; end
  def self.find(*args, &block); end
  def self.find_and_delete(*args, &block); end
  def self.first(*args, &block); end
  def self.inform_interceptors(mail); end
  def self.inform_observers(mail); end
  def self.last(*args, &block); end
  def self.new(*args, &block); end
  def self.random_tag; end
  def self.read(filename); end
  def self.read_from_string(mail_as_string); end
  def self.register_autoload(name, path); end
  def self.register_interceptor(interceptor); end
  def self.register_observer(observer); end
  def self.retriever_method; end
  def self.something_random; end
  def self.uniq; end
  def self.unregister_interceptor(interceptor); end
  def self.unregister_observer(observer); end
end
class Mail::Ruby19
  def self.b_value_decode(str); end
  def self.b_value_encode(str, encoding = nil); end
  def self.bracket(str); end
  def self.charset_encoder; end
  def self.charset_encoder=(arg0); end
  def self.convert_to_encoding(encoding); end
  def self.decode_base64(str); end
  def self.decode_utf7(utf7); end
  def self.encode_base64(str); end
  def self.encode_utf7(string); end
  def self.escape_bracket(str); end
  def self.escape_paren(str); end
  def self.get_constant(klass, string); end
  def self.has_constant?(klass, string); end
  def self.param_decode(str, encoding); end
  def self.param_encode(str); end
  def self.paren(str); end
  def self.pick_encoding(charset); end
  def self.q_value_decode(str); end
  def self.q_value_encode(str, encoding = nil); end
  def self.string_byteslice(str, *args); end
  def self.transcode_charset(str, from_encoding, to_encoding = nil); end
  def self.transcode_to_scrubbed_utf8(str); end
  def self.uri_parser; end
end
class Mail::Ruby19::StrictCharsetEncoder
  def encode(string, charset); end
end
class Mail::Ruby19::BestEffortCharsetEncoder
  def encode(string, charset); end
  def pick_encoding(charset); end
end
module Mail::VERSION
  def self.version; end
end
class String
end
class Mail::IndifferentHash < Hash
  def []=(key, value); end
  def convert_key(key); end
  def convert_value(value); end
  def default(key = nil); end
  def delete(key); end
  def dup; end
  def fetch(key, *extras); end
  def has_key?(key); end
  def include?(key); end
  def initialize(constructor = nil); end
  def key?(key); end
  def member?(key); end
  def merge!(other_hash); end
  def merge(hash); end
  def regular_update(*arg0); end
  def regular_writer(arg0, arg1); end
  def reverse_merge!(other_hash); end
  def reverse_merge(other_hash); end
  def self.new_from_hash_copying_default(hash); end
  def store(key, value); end
  def stringify_keys!; end
  def stringify_keys; end
  def symbolize_keys; end
  def to_hash; end
  def to_options!; end
  def update(other_hash); end
  def values_at(*indices); end
end
module Mail::Multibyte
  def self.clean(string); end
  def self.mb_chars(str); end
  def self.proxy_class; end
  def self.proxy_class=(arg0); end
  def self.valid_character; end
  def self.verify!(string); end
  def self.verify(string); end
end
module Mail::Multibyte::Unicode
  def apply_mapping(string, mapping); end
  def compose_codepoints(codepoints); end
  def database; end
  def decompose_codepoints(type, codepoints); end
  def default_normalization_form; end
  def default_normalization_form=(arg0); end
  def g_pack(unpacked); end
  def g_unpack(string); end
  def in_char_class?(codepoint, classes); end
  def normalize(string, form = nil); end
  def reorder_characters(codepoints); end
  def self.codepoints_to_pattern(array_of_codepoints); end
  def tidy_byte(byte); end
  def tidy_bytes(string, force = nil); end
  def u_unpack(string); end
  extend Mail::Multibyte::Unicode
end
class Mail::Multibyte::Unicode::Codepoint
  def code; end
  def code=(arg0); end
  def combining_class; end
  def combining_class=(arg0); end
  def decomp_mapping; end
  def decomp_mapping=(arg0); end
  def decomp_type; end
  def decomp_type=(arg0); end
  def initialize; end
  def lowercase_mapping; end
  def lowercase_mapping=(arg0); end
  def swapcase_mapping; end
  def uppercase_mapping; end
  def uppercase_mapping=(arg0); end
end
class Mail::Multibyte::Unicode::UnicodeDatabase
  def boundary; end
  def boundary=(arg0); end
  def codepoints; end
  def codepoints=(arg0); end
  def composition_exclusion; end
  def composition_exclusion=(arg0); end
  def composition_map; end
  def composition_map=(arg0); end
  def cp1252; end
  def cp1252=(arg0); end
  def initialize; end
  def load; end
  def self.dirname; end
  def self.filename; end
end
class Mail::Multibyte::Chars
  def <=>(other); end
  def =~(other); end
  def [](*args); end
  def []=(*args); end
  def acts_like_string?; end
  def capitalize!(*args); end
  def capitalize; end
  def chars(string); end
  def compose; end
  def decompose; end
  def downcase!(*args); end
  def downcase; end
  def g_length; end
  def initialize(string); end
  def justify(integer, way, padstr = nil); end
  def limit(limit); end
  def method_missing(method, *args, &block); end
  def normalize(form = nil); end
  def padding(padsize, padstr = nil); end
  def respond_to?(method, include_private = nil); end
  def reverse!(*args); end
  def reverse; end
  def self.consumes?(string); end
  def slice!(*args); end
  def slice(*args); end
  def split(*args); end
  def tidy_bytes!(*args); end
  def tidy_bytes(force = nil); end
  def titlecase; end
  def titleize; end
  def to_s; end
  def to_str; end
  def translate_offset(byte_offset); end
  def upcase!(*args); end
  def upcase; end
  def wrapped_string; end
  include Comparable
end
class Mail::Multibyte::EncodingError < StandardError
end
module Mail::Constants
end
module Mail::Utilities
  def atom_safe?(str); end
  def bracket(str); end
  def capitalize_field(str); end
  def constantize(str); end
  def dasherize(str); end
  def dquote(str); end
  def escape_paren(str); end
  def map_lines(str, &block); end
  def map_with_index(enum, &block); end
  def match_to_s(obj1, obj2); end
  def paren(str); end
  def quote_atom(str); end
  def quote_phrase(str); end
  def quote_token(str); end
  def self.binary_unsafe_to_crlf(string); end
  def self.binary_unsafe_to_lf(string); end
  def self.blank?(value); end
  def self.safe_for_line_ending_conversion?(string); end
  def self.to_crlf(string); end
  def self.to_lf(string); end
  def self.unescape(str); end
  def self.unquote(str); end
  def token_safe?(str); end
  def unbracket(str); end
  def underscoreize(str); end
  def unescape(str); end
  def unparen(str); end
  def unquote(str); end
  def uri_escape(str); end
  def uri_parser; end
  def uri_unescape(str); end
  include Mail::Constants
end
class Mail::Configuration
  def delivery_method(method = nil, settings = nil); end
  def initialize; end
  def lookup_delivery_method(method); end
  def lookup_retriever_method(method); end
  def param_encode_language(value = nil); end
  def retriever_method(method = nil, settings = nil); end
  def self.allocate; end
  def self.new(*arg0); end
  extend Singleton::SingletonClassMethods
  include Singleton
end
class Mail::Retriever
  def all(options = nil, &block); end
  def find_and_delete(options = nil, &block); end
  def first(options = nil, &block); end
  def last(options = nil, &block); end
end
class Mail::Message
  def <=>(other); end
  def ==(other); end
  def [](name); end
  def []=(name, value); end
  def action; end
  def add_boundary; end
  def add_charset; end
  def add_content_transfer_encoding; end
  def add_content_type; end
  def add_date(date_val = nil); end
  def add_encoding_to_body; end
  def add_file(values); end
  def add_message_id(msg_id_val = nil); end
  def add_mime_version(ver_val = nil); end
  def add_multipart_alternate_header; end
  def add_multipart_mixed_header; end
  def add_part(part); end
  def add_required_fields; end
  def add_required_message_fields; end
  def add_transfer_encoding; end
  def all_parts; end
  def allowed_encodings; end
  def attachment; end
  def attachment?; end
  def attachments; end
  def bcc(val = nil); end
  def bcc=(val); end
  def bcc_addrs; end
  def body(value = nil); end
  def body=(value); end
  def body_encoding(value = nil); end
  def body_encoding=(value); end
  def body_lazy(value); end
  def bounced?; end
  def boundary; end
  def cc(val = nil); end
  def cc=(val); end
  def cc_addrs; end
  def charset; end
  def charset=(value); end
  def comments(val = nil); end
  def comments=(val); end
  def content_description(val = nil); end
  def content_description=(val); end
  def content_disposition(val = nil); end
  def content_disposition=(val); end
  def content_id(val = nil); end
  def content_id=(val); end
  def content_location(val = nil); end
  def content_location=(val); end
  def content_transfer_encoding(val = nil); end
  def content_transfer_encoding=(val); end
  def content_type(val = nil); end
  def content_type=(val); end
  def content_type_parameters; end
  def convert_to_multipart; end
  def date(val = nil); end
  def date=(val); end
  def decode_body; end
  def decode_body_as_text; end
  def decoded; end
  def default(sym, val = nil); end
  def deliver!; end
  def deliver; end
  def delivery_handler; end
  def delivery_handler=(arg0); end
  def delivery_method(method = nil, settings = nil); end
  def delivery_status_part; end
  def delivery_status_report?; end
  def destinations; end
  def diagnostic_code; end
  def do_delivery; end
  def encode!; end
  def encoded; end
  def envelope_date; end
  def envelope_from; end
  def error_status; end
  def errors; end
  def filename; end
  def final_recipient; end
  def find_attachment; end
  def find_first_mime_type(mt); end
  def from(val = nil); end
  def from=(val); end
  def from_addrs; end
  def has_attachments?; end
  def has_charset?; end
  def has_content_transfer_encoding?; end
  def has_content_type?; end
  def has_date?; end
  def has_message_id?; end
  def has_mime_version?; end
  def has_transfer_encoding?; end
  def header(value = nil); end
  def header=(value); end
  def header_fields; end
  def headers(hash = nil); end
  def html_part(&block); end
  def html_part=(msg); end
  def identify_and_set_transfer_encoding; end
  def in_reply_to(val = nil); end
  def in_reply_to=(val); end
  def inform_interceptors; end
  def inform_observers; end
  def init_with_hash(hash); end
  def init_with_string(string); end
  def initialize(*args, &block); end
  def initialize_copy(original); end
  def inspect; end
  def is_marked_for_delete?; end
  def keywords(val = nil); end
  def keywords=(val); end
  def main_type; end
  def mark_for_delete=(value = nil); end
  def message_content_type; end
  def message_id(val = nil); end
  def message_id=(val); end
  def method_missing(name, *args, &block); end
  def mime_parameters; end
  def mime_type; end
  def mime_version(val = nil); end
  def mime_version=(val); end
  def multipart?; end
  def multipart_report?; end
  def parse_message; end
  def part(params = nil); end
  def parts; end
  def perform_deliveries; end
  def perform_deliveries=(arg0); end
  def process_body_raw; end
  def raise_delivery_errors; end
  def raise_delivery_errors=(arg0); end
  def raw_envelope; end
  def raw_source; end
  def raw_source=(value); end
  def read; end
  def ready_to_send!; end
  def received(val = nil); end
  def received=(val); end
  def references(val = nil); end
  def references=(val); end
  def register_for_delivery_notification(observer); end
  def remote_mta; end
  def reply(*args, &block); end
  def reply_to(val = nil); end
  def reply_to=(val); end
  def resent_bcc(val = nil); end
  def resent_bcc=(val); end
  def resent_cc(val = nil); end
  def resent_cc=(val); end
  def resent_date(val = nil); end
  def resent_date=(val); end
  def resent_from(val = nil); end
  def resent_from=(val); end
  def resent_message_id(val = nil); end
  def resent_message_id=(val); end
  def resent_sender(val = nil); end
  def resent_sender=(val); end
  def resent_to(val = nil); end
  def resent_to=(val); end
  def retryable?; end
  def return_path(val = nil); end
  def return_path=(val); end
  def self.default_charset; end
  def self.default_charset=(charset); end
  def self.from_hash(hash); end
  def self.from_yaml(str); end
  def sender(val = nil); end
  def sender=(val); end
  def separate_parts; end
  def set_envelope(val); end
  def set_envelope_header; end
  def skip_deletion; end
  def smtp_envelope_from(val = nil); end
  def smtp_envelope_from=(val); end
  def smtp_envelope_to(val = nil); end
  def smtp_envelope_to=(val); end
  def sub_type; end
  def subject(val = nil); end
  def subject=(val); end
  def text?; end
  def text_part(&block); end
  def text_part=(msg); end
  def to(val = nil); end
  def to=(val); end
  def to_addrs; end
  def to_s; end
  def to_yaml(opts = nil); end
  def transfer_encoding; end
  def transport_encoding(val = nil); end
  def transport_encoding=(val); end
  def without_attachments!; end
  include Mail::Constants
  include Mail::Utilities
end
class Mail::Part < Mail::Message
  def action; end
  def add_content_id(content_id_val = nil); end
  def add_required_fields; end
  def add_required_message_fields; end
  def bounced?; end
  def cid; end
  def delivery_status_data; end
  def delivery_status_report_part?; end
  def diagnostic_code; end
  def error_status; end
  def final_recipient; end
  def get_return_values(key); end
  def has_content_id?; end
  def inline?; end
  def inline_content_id; end
  def parse_delivery_status_report; end
  def parse_message; end
  def remote_mta; end
  def retryable?; end
  def url; end
end
class Mail::Header
  def [](name); end
  def []=(name, value); end
  def charset; end
  def charset=(val); end
  def decoded; end
  def each(&block); end
  def encoded; end
  def errors; end
  def field_summary; end
  def fields; end
  def fields=(unfolded_fields); end
  def has_content_id?; end
  def has_date?; end
  def has_message_id?; end
  def has_mime_version?; end
  def initialize(header_text = nil, charset = nil); end
  def initialize_copy(original); end
  def limited_field?(name); end
  def raw_source; end
  def raw_source=(val); end
  def select_field_for(name); end
  def self.maximum_amount; end
  def self.maximum_amount=(value); end
  def split_header; end
  def to_s; end
  include Enumerable
  include Mail::Constants
  include Mail::Utilities
end
class Mail::PartsList < Anonymous_Delegator_47
  def attachments; end
  def collect!; end
  def collect; end
  def encode_with(coder); end
  def get_order_value(part, order); end
  def initialize(*args); end
  def map!; end
  def map; end
  def parts; end
  def sort!(order); end
  def sort; end
  def to_yaml(options = nil); end
end
class Mail::AttachmentsList < Array
  def [](index_value); end
  def []=(name, value); end
  def guess_encoding; end
  def initialize(parts_list); end
  def inline; end
  def set_mime_type(filename); end
end
class Mail::Body
  def <<(val); end
  def ==(other); end
  def =~(regexp); end
  def ascii_only?; end
  def boundary; end
  def boundary=(val); end
  def charset; end
  def charset=(val); end
  def crlf_boundary; end
  def decoded; end
  def default_encoding; end
  def empty?; end
  def encoded(transfer_encoding = nil); end
  def encoding(val = nil); end
  def encoding=(val); end
  def end_boundary; end
  def epilogue; end
  def epilogue=(val); end
  def extract_parts; end
  def include?(other); end
  def initialize(string = nil); end
  def match(regexp); end
  def multipart?; end
  def negotiate_best_encoding(message_encoding, allowed_encodings = nil); end
  def parts; end
  def preamble; end
  def preamble=(val); end
  def raw_source; end
  def set_charset; end
  def set_sort_order(order); end
  def sort_parts!; end
  def split!(boundary); end
  def to_s; end
end
class Mail::AddressContainer < Array
  def <<(address); end
  def initialize(field, list = nil); end
end
module Mail::CommonAddress
  def <<(val); end
  def address_list; end
  def addresses; end
  def addrs; end
  def charset; end
  def decoded_group_addresses; end
  def default; end
  def display_names; end
  def do_decode; end
  def do_encode(field_name); end
  def each; end
  def encode_if_needed(val); end
  def encoded_group_addresses; end
  def formatted; end
  def get_group_addresses(group_list); end
  def group_addresses; end
  def group_names; end
  def groups; end
  def parse(val = nil); end
  def utf8_if_needed(val); end
  def value=(val); end
end
module Mail::CommonField
  def default; end
  def ensure_filename_quoted(value); end
  def field_length; end
  def name; end
  def name=(value); end
  def responsible_for?(val); end
  def to_s; end
  def value; end
  def value=(value); end
  include Mail::Constants
end
class Mail::StructuredField
  def charset; end
  def charset=(val); end
  def default; end
  def errors; end
  def initialize(name = nil, value = nil, charset = nil); end
  include Mail::CommonField
  include Mail::Utilities
end
class Mail::ToField < Mail::StructuredField
  def decoded; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonAddress
end
class Mail::CcField < Mail::StructuredField
  def decoded; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonAddress
end
class Mail::BccField < Mail::StructuredField
  def decoded; end
  def encoded; end
  def include_in_headers; end
  def include_in_headers=(include_in_headers); end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonAddress
end
module Mail::CommonMessageId
  def default; end
  def do_decode; end
  def do_encode(field_name); end
  def element; end
  def formated_message_ids(join); end
  def message_id; end
  def message_ids; end
  def parse(val = nil); end
end
class Mail::MessageIdField < Mail::StructuredField
  def decoded; end
  def encoded; end
  def generate_message_id; end
  def initialize(value = nil, charset = nil); end
  def message_ids; end
  def name; end
  def to_s; end
  include Mail::CommonMessageId
end
class Mail::InReplyToField < Mail::StructuredField
  def decoded; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonMessageId
end
class Mail::ReferencesField < Mail::StructuredField
  def decoded; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonMessageId
end
class Mail::UnstructuredField
  def charset; end
  def charset=(arg0); end
  def decoded; end
  def default; end
  def do_decode; end
  def do_encode; end
  def encode(value); end
  def encode_crlf(value); end
  def encoded; end
  def errors; end
  def fold(prepend = nil); end
  def initialize(name, value, charset = nil); end
  def normalized_encoding; end
  def parse; end
  def wrap_lines(name, folded_lines); end
  def wrapped_value; end
  include Mail::CommonField
  include Mail::Utilities
end
class Mail::SubjectField < Mail::UnstructuredField
  def initialize(value = nil, charset = nil); end
end
class Mail::CommentsField < Mail::UnstructuredField
  def initialize(value = nil, charset = nil); end
end
class Mail::KeywordsField < Mail::StructuredField
  def decoded; end
  def default; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  def keywords; end
  def parse(val = nil); end
  def phrase_list; end
end
module Mail::CommonDate
  def date_time; end
  def default; end
  def do_decode; end
  def do_encode(field_name); end
  def element; end
  def parse(val = nil); end
end
class Mail::DateField < Mail::StructuredField
  def decoded; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonDate
end
class Mail::FromField < Mail::StructuredField
  def decoded; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonAddress
end
class Mail::SenderField < Mail::StructuredField
  def address; end
  def addresses; end
  def decoded; end
  def default; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonAddress
end
class Mail::ReplyToField < Mail::StructuredField
  def decoded; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonAddress
end
class Mail::ResentDateField < Mail::StructuredField
  def decoded; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonDate
end
class Mail::ResentFromField < Mail::StructuredField
  def decoded; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonAddress
end
class Mail::ResentSenderField < Mail::StructuredField
  def address; end
  def addresses; end
  def decoded; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonAddress
end
class Mail::ResentToField < Mail::StructuredField
  def decoded; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonAddress
end
class Mail::ResentCcField < Mail::StructuredField
  def decoded; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonAddress
end
class Mail::ResentBccField < Mail::StructuredField
  def decoded; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonAddress
end
class Mail::ResentMessageIdField < Mail::StructuredField
  def decoded; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  def name; end
  include Mail::CommonMessageId
end
class Mail::ReturnPathField < Mail::StructuredField
  def address; end
  def decoded; end
  def default; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  include Mail::CommonAddress
end
class Mail::ReceivedField < Mail::StructuredField
  def date_time; end
  def decoded; end
  def element; end
  def encoded; end
  def formatted_date; end
  def info; end
  def initialize(value = nil, charset = nil); end
  def parse(val = nil); end
end
class Mail::MimeVersionField < Mail::StructuredField
  def decoded; end
  def element; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  def major; end
  def minor; end
  def parse(val = nil); end
  def version; end
end
class Mail::ContentTransferEncodingField < Mail::StructuredField
  def decoded; end
  def element; end
  def encoded; end
  def encoding; end
  def initialize(value = nil, charset = nil); end
  def parse(val = nil); end
end
class Mail::ContentDescriptionField < Mail::UnstructuredField
  def initialize(value = nil, charset = nil); end
end
class Mail::ParameterHash < Mail::IndifferentHash
  def [](key_name); end
  def decoded; end
  def encoded; end
  include Mail::Utilities
end
class Mail::ContentDispositionField < Mail::StructuredField
  def decoded; end
  def disposition_type; end
  def element; end
  def encoded; end
  def filename; end
  def initialize(value = nil, charset = nil); end
  def parameters; end
  def parse(val = nil); end
end
class Mail::ContentTypeField < Mail::StructuredField
  def attempt_to_clean; end
  def content_type; end
  def decoded; end
  def default; end
  def element; end
  def encoded; end
  def filename; end
  def get_mime_type(val); end
  def initialize(value = nil, charset = nil); end
  def main_type; end
  def method_missing(name, *args, &block); end
  def parameters; end
  def parse(val = nil); end
  def sanatize(val); end
  def self.generate_boundary; end
  def self.with_boundary(type); end
  def string; end
  def stringify(params); end
  def sub_type; end
  def value; end
end
class Mail::ContentIdField < Mail::StructuredField
  def content_id; end
  def decoded; end
  def element; end
  def encoded; end
  def generate_content_id; end
  def initialize(value = nil, charset = nil); end
  def name; end
  def parse(val = nil); end
  def to_s; end
end
class Mail::ContentLocationField < Mail::StructuredField
  def decoded; end
  def element; end
  def encoded; end
  def initialize(value = nil, charset = nil); end
  def location; end
  def parse(val = nil); end
end
class Mail::Field
  def <=>(other); end
  def ==(other); end
  def create_field(name, value, charset); end
  def field; end
  def field=(value); end
  def field_class_for(name); end
  def field_order_id; end
  def initialize(name, value = nil, charset = nil); end
  def inspect; end
  def method_missing(name, *args, &block); end
  def name; end
  def new_field(name, value, charset); end
  def respond_to_missing?(method_name, include_private); end
  def responsible_for?(val); end
  def same(other); end
  def self.parse(field, charset = nil); end
  def self.split(raw_field); end
  def to_s; end
  def unfold(string); end
  def unparsed_value; end
  def update(name, value); end
  def value; end
  def value=(val); end
  include Comparable
  include Mail::Utilities
end
class Mail::Field::FieldError < StandardError
end
class Mail::Field::ParseError < Mail::Field::FieldError
  def element; end
  def element=(arg0); end
  def initialize(element, value, reason); end
  def reason; end
  def reason=(arg0); end
  def to_utf8(text); end
  def value; end
  def value=(arg0); end
end
class Mail::Field::NilParseError < Mail::Field::ParseError
  def initialize(element); end
end
class Mail::Field::IncompleteParseError < Mail::Field::ParseError
  def initialize(element, original_text, unparsed_index); end
end
class Mail::Field::SyntaxError < Mail::Field::FieldError
end
class Mail::FieldList < Array
  def <<(new_field); end
  include Enumerable
end
class Mail::Envelope < Mail::StructuredField
  def date; end
  def element; end
  def from; end
  def initialize(*args); end
end
class Mail::UnknownEncodingType < StandardError
end
module Mail::Encodings
  def self.address_encode(address, charset = nil); end
  def self.b_value_decode(str); end
  def self.b_value_encode(string, encoding = nil); end
  def self.collapse_adjacent_encodings(str); end
  def self.decode_encode(str, output_type); end
  def self.defined?(name); end
  def self.each_base64_chunk_byterange(str, max_bytesize_per_base64_chunk, &block); end
  def self.each_chunk_byterange(str, max_bytesize_per_chunk); end
  def self.encode_non_usascii(address, charset); end
  def self.find_encoding(str); end
  def self.get_all; end
  def self.get_encoding(name); end
  def self.get_name(name); end
  def self.param_decode(str, encoding); end
  def self.param_encode(str); end
  def self.q_value_decode(str); end
  def self.q_value_encode(encoded_str, encoding = nil); end
  def self.register(name, cls); end
  def self.transcode_charset(str, from_charset, to_charset = nil); end
  def self.unquote_and_convert_to(str, to_encoding); end
  def self.value_decode(str); end
  def self.value_encoding_from_string(str); end
  def self.with_ascii_kcode; end
  extend Mail::Utilities
  include Mail::Constants
end
class Mail::Encodings::TransferEncoding
  def self.can_encode?(enc); end
  def self.can_transport?(enc); end
  def self.compatible_input?(str); end
  def self.cost(str); end
  def self.lowest_cost(str, encodings); end
  def self.negotiate(message_encoding, source_encoding, str, allowed_encodings = nil); end
  def self.renegotiate(message_encoding, source_encoding, str, allowed_encodings = nil); end
  def self.to_s; end
end
class Mail::Encodings::Identity < Mail::Encodings::TransferEncoding
  def self.cost(str); end
  def self.decode(str); end
  def self.encode(str); end
end
class Mail::Encodings::Binary < Mail::Encodings::Identity
end
class Mail::Encodings::EightBit < Mail::Encodings::Binary
  def self.compatible_input?(str); end
end
class Mail::Encodings::SevenBit < Mail::Encodings::EightBit
  def self.decode(str); end
  def self.encode(str); end
end
class Mail::Encodings::Base64 < Mail::Encodings::SevenBit
  def self.can_encode?(enc); end
  def self.compatible_input?(str); end
  def self.cost(str); end
  def self.decode(str); end
  def self.encode(str); end
end
class Mail::Encodings::QuotedPrintable < Mail::Encodings::SevenBit
  def self.can_encode?(enc); end
  def self.compatible_input?(str); end
  def self.cost(str); end
  def self.decode(str); end
  def self.encode(str); end
end
class Mail::Encodings::UnixToUnix < Mail::Encodings::TransferEncoding
  def self.decode(str); end
  def self.encode(str); end
end
module Mail::Matchers
  def an_attachment_with_filename(filename); end
  def any_attachment; end
  def have_sent_email; end
end
class Mail::Matchers::HasSentEmailMatcher
  def bcc(recipient_or_list); end
  def cc(recipient_or_list); end
  def description; end
  def dump_deliveries; end
  def explain_expectations; end
  def failure_message; end
  def failure_message_when_negated; end
  def filter_matched_deliveries(deliveries); end
  def from(sender); end
  def initialize(_context); end
  def matches?(subject); end
  def matches_on_attachments?(delivery); end
  def matches_on_blind_copy_recipients?(delivery); end
  def matches_on_body?(delivery); end
  def matches_on_body_matcher?(delivery); end
  def matches_on_copy_recipients?(delivery); end
  def matches_on_having_attachments?(delivery); end
  def matches_on_html_part_body?(delivery); end
  def matches_on_recipients?(delivery); end
  def matches_on_sender?(delivery); end
  def matches_on_subject?(delivery); end
  def matches_on_subject_matcher?(delivery); end
  def matches_on_text_part_body?(delivery); end
  def matching_body(body_matcher); end
  def matching_subject(subject_matcher); end
  def to(recipient_or_list); end
  def with_any_attachments; end
  def with_attachments(attachments); end
  def with_body(body); end
  def with_html(body); end
  def with_no_attachments; end
  def with_subject(subject); end
  def with_text(body); end
end
class Mail::Matchers::AnyAttachmentMatcher
  def ===(other); end
end
class Mail::Matchers::AttachmentFilenameMatcher
  def ===(other); end
  def filename; end
  def initialize(filename); end
end
module Mail::CheckDeliveryParams
  def self.check(mail); end
  def self.check_addr(addr_name, addr); end
  def self.check_from(addr); end
  def self.check_message(message); end
  def self.check_to(addrs); end
  def self.validate_smtp_addr(addr); end
end
class Mail::TestMailer
  def deliver!(mail); end
  def initialize(values); end
  def self.deliveries; end
  def self.deliveries=(val); end
  def settings; end
  def settings=(arg0); end
end
class Mail::SMTP
  def build_smtp_session; end
  def deliver!(mail); end
  def initialize(values); end
  def settings; end
  def settings=(arg0); end
  def ssl_context; end
  def start_smtp_session(&block); end
end
class Mail::FileDelivery
  def deliver!(mail); end
  def initialize(values); end
  def settings; end
  def settings=(arg0); end
end
class Mail::Sendmail
  def deliver!(mail); end
  def initialize(values); end
  def self.call(path, arguments, destinations, encoded_message); end
  def self.popen(command, &block); end
  def self.shellquote(address); end
  def settings; end
  def settings=(arg0); end
end
